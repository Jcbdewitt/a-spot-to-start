/// @description  Follow the mouse
x = mouse_x;
y = mouse_y;

/// Set px and py to -1 and map_clicked = false
if mouse_check_button_released(mb_left)
{
    px = -1;
    py = -1;
    map_clicked = false
}

