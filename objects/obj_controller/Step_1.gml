/// @description CLEAR CONTROL GROUPS
if !keyboard_check(vk_shift) && mouse_check_button_pressed(mb_left) 
{
    {
        global.group_selected = global.control_group_none
        ds_list_clear(global.control_group_none)
    }
}
/*
//CLEAR CONTROL GROUP 1
if keyboard_check(vk_control) && keyboard_check_pressed(ord('1'))
{
    global.group_selected = global.control_group_1
    ds_list_clear(global.control_group_1)
}
//CLEAR CONTROL GROUP 2
if keyboard_check(vk_control) && keyboard_check_pressed(ord('2'))
{
    global.group_selected = global.control_group_2
    ds_list_clear(global.control_group_2)
}
//CLEAR CONTROL GROUP 3
if keyboard_check(vk_control) && keyboard_check_pressed(ord('3'))
{
    global.group_selected = global.control_group_3
    ds_list_clear(global.control_group_3)
}
//CLEAR CONTROL GROUP 4
if keyboard_check(vk_control) && keyboard_check_pressed(ord('4'))
{
    global.group_selected = global.control_group_4
    ds_list_clear(global.control_group_4)
}
//CLEAR CONTROL GROUP 5
if keyboard_check(vk_control) && keyboard_check_pressed(ord('5'))
{
    global.group_selected = global.control_group_5
    ds_list_clear(global.control_group_5)
}
//CLEAR CONTROL GROUP 6
if keyboard_check(vk_control) && keyboard_check_pressed(ord('6'))
{
    global.group_selected = global.control_group_6
    ds_list_clear(global.control_group_6)
}
//CLEAR CONTROL GROUP 7
if keyboard_check(vk_control) && keyboard_check_pressed(ord('7'))
{
    global.group_selected = global.control_group_7
    ds_list_clear(global.control_group_7)
}
//CLEAR CONTROL GROUP 8
if keyboard_check(vk_control) && keyboard_check_pressed(ord('8'))
{
    global.group_selected = global.control_group_8
    ds_list_clear(global.control_group_8)
}
//CLEAR CONTROL GROUP 9
if keyboard_check(vk_control) && keyboard_check_pressed(ord('9'))
{
    global.group_selected = global.control_group_9
    ds_list_clear(global.control_group_9)
}
//CLEAR CONTROL GROUP 0
if keyboard_check(vk_control) && keyboard_check_pressed(ord('0'))
{
    global.group_selected = global.control_group_0
    ds_list_clear(global.control_group_0)
}

/* */
/*  */
