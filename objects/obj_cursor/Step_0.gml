/// @description  RIGHT MOUSE BUTTON, CREATE TARGET

// IS THE MOUSE TOUCHING AN ENEMY
if position_meeting(mouse_x, mouse_y, obj_enemy_parent)
{
    // IS THERE A UNIT SELECTED?
    if ds_list_size(global.group_selected) > 0
    {
        cursor_color = c_red
        
        // RIGHT MOUSE BUTTON PRESSED
        if mouse_check_button_pressed(mb_right)
        {
            target = instance_create(mouse_x,mouse_y, obj_target)
            
            with target
            {
                target_color = c_red
            }
        }
    }
}
else
{
    if ds_list_size(global.group_selected) > 0
    {
        if global.attack_button = true
        cursor_color = c_yellow
        else
        cursor_color = c_white
        
        if mouse_check_button_pressed(mb_right)
        {
            target = instance_create(mouse_x,mouse_y, obj_target)
            
            with target
            {
                target_color = c_yellow
            }
        }
    }
}


