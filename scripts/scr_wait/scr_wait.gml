if wait < 3
{
    alarm[0] = 5
    mp_grid_add_cell(global.grid, floor(x /GRID_SIZE), floor(y / GRID_SIZE))
}
if wait = 3 // IF WAIT = 3, CREATE A NEW PATH
{
    //CLEAR UNIT'S CELL FROM THE GRID SO IT CAN FIND A PATH
    mp_grid_clear_cell(global.grid, floor(x / GRID_SIZE), floor(y / GRID_SIZE))

    scr_define_path()
                            
    if path_success = false
    {
        alarm[0] = 5
        mp_grid_add_cell(global.grid, floor(x /GRID_SIZE), floor(y / GRID_SIZE))
    }
}
if wait < 6 && wait > 3
{
    alarm[0] = 5
    mp_grid_add_cell(global.grid, floor(x /GRID_SIZE), floor(y / GRID_SIZE))
}
if wait = 6 // IF WAIT = 6, STATE = 'IDLE'
{
    //CLEAR UNIT'S CELL FROM THE GRID SO IT CAN FIND A PATH
    mp_grid_clear_cell(global.grid, floor(x / GRID_SIZE), floor(y / GRID_SIZE))

    scr_define_path()
                            
    if path_success = false
    {
        alarm[0] = -1
        mp_grid_add_cell(global.grid, floor(x /GRID_SIZE), floor(y / GRID_SIZE))
        state = "idle"
        target_x = x
        target_y = y
    }
}
