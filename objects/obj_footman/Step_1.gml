/// @description  RIGHT CLICK TO MOVE, CLEAR CELL

// RIGHT CLICK
if mouse_check_button_pressed(mb_right)
{
    // IF SELECTED
    if selected = true && point_x = x && point_y = y
    {
        
        // CLEAR UNIT'S CELL FROM THE GRID SO IT CAN FIND A PATH
        if distance_to_object(target) > attack_range// if there are points on the path
            mp_grid_clear_cell(global.grid, floor(x / GRID_SIZE), floor(y / GRID_SIZE))
    }
}


