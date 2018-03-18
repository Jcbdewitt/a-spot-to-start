/// @description scr_select_units(press_x, press_y, release_x, release_y)
/// @function scr_select_units
/// @param press_x
/// @param  press_y
/// @param  release_x
/// @param  release_y

//USED TO DELETE A UNIT IF IT'S NO LONGER SELECTED
var in_list = ds_list_find_index(global.control_group_none, id)

// THE NUMBER OF CURRENTLY SELECTED UNITS
var currently_selected = ds_list_size(global.control_group_none) //ds_list_size(global.control_group_none)

//press
var px = argument0;
var py = argument1;
    
//Release
var rx = argument2;
var ry = argument3;
    
//case
var tlbr = (x>px && x<rx && y>py && y<ry);
var bltr = (x>px && x<rx && y<py && y>ry);
var brtl = (x<px && x>rx && y<py && y>ry);
var trbl = (x<px && x>rx && y>py && y<ry);

// UNIT IS IN SELECTION BOX OR TOUCHING THE MOUSE    
if((tlbr || bltr || brtl || trbl) or position_meeting(mouse_x, mouse_y, self))
{ 
    // IF SHIFT IS NOT PRESSED
    if !keyboard_check(vk_shift)
    {
        if currently_selected < 9
        {
            selected = true
            ds_list_add(global.control_group_none, id)
        }
    }
    // IF SHIFT IS PRESSED
    else
    {
        // IF THE MOUSE IS TOUCHING THE UNIT
        if position_meeting(mouse_x,mouse_y,self) 
        {
            global.group_selected = global.control_group_none
            
            if selected = true
            {
                selected = false
                ds_list_delete(global.control_group_none, in_list)
            }
            else if currently_selected < 9
            {
                selected = true
                ds_list_add(global.control_group_none, id)
            }
            
        } 
        else if selected = false && currently_selected < 9
        // IF THE MOUSE IS NOT TOUCHING THE UNIT AND ITS IN THE SELECTION BOX
        {
            selected = true
            ds_list_add(global.control_group_none, id)
        }
    }
}
else
// DESELECT THE UNIT
{
    if collision_rectangle(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-192, __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-192,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ), obj_cursor,false,true)
    exit
    // IF SHIFT IS NOT PRESSED or MOUSE IS NOT TOUCHING THE MINIMAP
    if !keyboard_check(vk_shift) 
    {
        selected = false
        ds_list_delete(global.control_group_none,in_list)
        global.group_selected = global.control_group_none
    }
}
