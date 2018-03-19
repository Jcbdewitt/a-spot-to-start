// CREATE NEW PATH TO TARGET
if create_new_target = true 
{
    create_new_target = false
    wait = 0
    if instance_exists(target)
    {
        if distance_to_object(target) > attack_range //32
        {
            //CLEAR UNIT'S CELL FROM THE GRID SO IT CAN FIND A PATH
            mp_grid_clear_cell(global.grid, floor(x / GRID_SIZE), floor(y / GRID_SIZE))
            scr_define_path()
                        
            alarm[0] = choose(1,2,3,4) // wait
        }
        else
        {
            mp_grid_add_cell(global.grid, floor(x /GRID_SIZE), floor(y / GRID_SIZE))            
            alarm[0] = choose(1,2,3,4) // wait
        }
    }
}

if instance_exists(target)
{        
    // IS THE TARGET CLOSE ENOUGH TO ATTACK IT?
    if distance_to_object(target) <= attack_range //&& alarm[0] = -1
    {
        target_x = x
        target_y = y
        path_clear_points(path)
        image_angle = point_direction(x,y,target.x,target.y)
        
        // ATTACK!!!
        if attack = -1
        {
            //target.hp -= 30
            attack = 0
            alarm[1] = 6//30
            target_x = x
            target_y = y    
        }
    }
    else if !mouse_check_button_pressed(mb_right) // note: the unit's aren't added to the grid yet, so make sure the RMB isn't pressed before checking the grid.
    // MOVE CLOSER TO THE TARGET
    {
        // IS THE NEXT POINT FREE TO MOVE TO?
        if mp_grid_get_cell(global.grid, path_get_point_x(path, path_pos + 1) div GRID_SIZE, path_get_point_y(path, path_pos + 1) div GRID_SIZE) = 0 
        {
            path_pos += 1
            point_x = path_get_point_x(path, path_pos)
            point_y = path_get_point_y(path, path_pos)
            wait = 0
                            
            // ADD THE NEXT CELL TO THE GRID
            mp_grid_add_cell(global.grid, path_get_point_x(path, path_pos) div GRID_SIZE, path_get_point_y(path, path_pos) div GRID_SIZE)
            // CLEAR THE OLD CELL
            mp_grid_clear_cell(global.grid, path_get_point_x(path, path_pos - 1) div GRID_SIZE, path_get_point_y(path, path_pos - 1) div GRID_SIZE) 
        }
        else
        // IF THE NEXT CELL IS NOT FREE, WAIT
        {   
            inst = instance_position(path_get_point_x(path, path_pos + 1), path_get_point_y(path, path_pos + 1), obj_all_units_parent)
            // IS THE OTHER UNIT AT THE END OF ITS PATH? IF SO CREATE A NEW PATH RIGHT AWAY
            if instance_exists(inst)
            {
                if inst.x = inst.target_x && inst.y = inst.target_y
                {
                    alarm[0] = 1 // wait alarm
                    // CREATE TARGET AT THE TARGETTED UNIT
                    target_x = floor(target.x / GRID_SIZE) * GRID_SIZE + (GRID_SIZE / 2)
                    target_y = floor(target.y / GRID_SIZE) * GRID_SIZE + (GRID_SIZE / 2)
                                            
                    // PLACE THE TARGET AT THE CLOSEST  SPOT TO THE TARGET
                    scr_set_attack_targets()
                    //CLEAR UNIT'S CELL FROM THE GRID SO IT CAN FIND A PATH
                    mp_grid_clear_cell(global.grid, floor(x / GRID_SIZE), floor(y / GRID_SIZE))
                            
                    scr_define_path()
                                            
                    if path_success = false
                    {
                        alarm[0] = 5 // wait alarm
                        wait = 0
                        mp_grid_add_cell(global.grid, floor(x /GRID_SIZE), floor(y / GRID_SIZE))
                        
                    }
                }
            }
                            
            if alarm[0] = -1 // wait alarm
            {
                if wait < 3
                {
                    alarm[0] = 5 // wait alarm
                    mp_grid_add_cell(global.grid, floor(x /GRID_SIZE), floor(y / GRID_SIZE))
                }
                else // IF WAIT = 3, CREATE A NEW PATH
                {
                    // CREATE TARGET AT THE TARGETTED UNIT
                    target_x = floor(target.x / GRID_SIZE) * GRID_SIZE + (GRID_SIZE / 2)
                    target_y = floor(target.y / GRID_SIZE) * GRID_SIZE + (GRID_SIZE / 2)
                                            
                    // PLACE THE TARGET AT THE CLOSEST TO THE TARGET
                    scr_set_attack_targets()
                    //CLEAR UNIT'S CELL FROM THE GRID SO IT CAN FIND A PATH
                    mp_grid_clear_cell(global.grid, floor(x / GRID_SIZE), floor(y / GRID_SIZE))
                            
                    scr_define_path()
                                            
                    if path_success = false
                    {
                        alarm[0] = 5 // wait alarm
                        wait = 0
                        mp_grid_add_cell(global.grid, floor(x /GRID_SIZE), floor(y / GRID_SIZE))
                    }
                }
            }  
        }
        image_angle = point_direction(x,y,point_x,point_y)
    }
}
