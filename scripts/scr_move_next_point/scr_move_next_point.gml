// CREATE NEW PATH TO TARGET
if create_new_target = true 
{
    create_new_target = false
    wait = 0
    //CLEAR UNIT'S CELL FROM THE GRID SO IT CAN FIND A PATH
    mp_grid_clear_cell(global.grid, floor(x / GRID_SIZE), floor(y / GRID_SIZE))
    scr_define_path()
    alarm[0] = 0//choose(1,2,3,4)
}
        
// IF NOT AT END OF PATH
if path_pos < path_get_number(path) && alarm[0] = -1 && !mouse_check_button_pressed(mb_right)
{
    // IS THE NEXT POINT FREE TO MOVE TO?
    if mp_grid_get_cell(global.grid, path_get_point_x(path, path_pos + 1) div GRID_SIZE, path_get_point_y(path, path_pos + 1) div GRID_SIZE) = 0 
    {
        path_pos += 1
        point_x = path_get_point_x(path, path_pos)
        point_y = path_get_point_y(path, path_pos)
        wait = 0
                         
        image_angle = point_direction(x,y,point_x,point_y)
        
                        
        // ADD THE NEXT CELL TO THE GRID
        mp_grid_add_cell(global.grid, path_get_point_x(path, path_pos) div GRID_SIZE, path_get_point_y(path, path_pos) div GRID_SIZE)
        // CLEAR THE OLD CELL
        mp_grid_clear_cell(global.grid, path_get_point_x(path, path_pos - 1) div GRID_SIZE, path_get_point_y(path, path_pos - 1) div GRID_SIZE) 
    }
    else
    // IF THE NEXT CELL IS NOT FREE, WAIT
    {   
        

        //img_angle = point_direction(x,y,point_x,point_y)
        inst = instance_position(path_get_point_x(path, path_pos + 1), path_get_point_y(path, path_pos + 1), obj_all_units_parent)
        // IS THE OTHER UNIT AT THE END OF ITS PATH? IF SO CREATE A NEW PATH RIGHT AWAY
        if instance_exists(inst)
        {
            if inst.x = inst.target_x && inst.y = inst.target_y
            {
                alarm[0] = -1
                //CLEAR UNIT'S CELL FROM THE GRID SO IT CAN FIND A PATH
                mp_grid_clear_cell(global.grid, floor(x / GRID_SIZE), floor(y / GRID_SIZE))
                
                scr_define_path()
                                        
                if path_success = false
                {
                    if wait < 6
                    {
                        alarm[0] = 5
                        mp_grid_add_cell(global.grid, floor(x /GRID_SIZE), floor(y / GRID_SIZE))
                    }
                    else
                        state = "idle"
                }
            }
        }
                        
        // WAIT
        if alarm[0] = -1
        {
        scr_wait()
        } 
    }
}
