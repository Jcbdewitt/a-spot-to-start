/// @description  ADD CELL TO GRID

if  x = point_x && y = point_y 
{
    mp_grid_add_cell(global.grid, floor(x /GRID_SIZE), floor(y / GRID_SIZE))
}

/// DOUBLE CLICK TO SELECT ALL OF THE SAME UNIT

if position_meeting(mouse_x,mouse_y,self) && mouse_check_button_released(mb_left)
{
    // if the double click alarm is greater than 0
    if alarm[3] > 0  //
    {
        // loop through all of the footman within the view to see if it can be selected
        with obj_footman
        {
            // IS THE UNIT WITHIN THE VIEW AND ARE THERE LESS THAN 9 UNITS ALREADY SELECTED? IF IT IS THEN SELECT IT AND ADD IT TO GROUP NONE
            if x > __view_get( e__VW.XView, 0 ) && x < __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) 
            && y > __view_get( e__VW.YView, 0 ) && y < __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )
            && ds_list_size(global.control_group_none) < 9
            {
                selected = true
                if ds_list_find_index(global.control_group_none, id) = -1
                ds_list_add(global.control_group_none, id)
            }
        }
    }
    else // ELSE SET THE DOUBLE CLICK ALARM
    alarm[3] = 15
}


