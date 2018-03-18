// CREATE A NEW TARGET AND PATH

if create_new_target = true 
{            
    create_new_target = false
    
    //CLEAR UNIT'S CELL FROM THE GRID SO IT CAN FIND A PATH
    mp_grid_clear_cell(global.grid, floor(x / GRID_SIZE), floor(y / GRID_SIZE))
    //CLEAR ENEMY UNIT'S CELL FROM THE GRID SO IT CAN FIND A PATH
    if instance_exists(target)
        mp_grid_clear_cell(global.grid, floor(target.x / GRID_SIZE), floor(target.y / GRID_SIZE))
     scr_define_path()
     //ADD ENEMY UNIT'S CELL FROM THE GRID SO IT CAN FIND A PATH
     if instance_exists(target)
        mp_grid_add_cell(global.grid, floor(target.x / GRID_SIZE), floor(target.y / GRID_SIZE))
     if path_success = true
     {
        if instance_exists(target)
        alarm[2] = choose(1,2,3,4) 
        else
        alarm[0] = choose(1,2,3,4)             
     } 
     else
     {
        state = "idle"
        if instance_exists(target)
        alarm[2] = choose(1,2,3,4) 
        else
        alarm[0] = 60 
        mp_grid_add_cell(global.grid, floor(x / GRID_SIZE), floor(y / GRID_SIZE))
     }
}
