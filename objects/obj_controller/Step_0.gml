/// @description  GLOBAL ATTACK BUTTON
if keyboard_check_pressed(ord("A")) && global.attack_button = false
{
    global.attack_button = true
    audio_play_sound(snd_select,1,0)
}


/// PRESS TAB TO TOGGLE HP BARS
if keyboard_check_pressed(vk_tab)
{
    if show_hp = true
        show_hp = false
    else
        show_hp = true
}

