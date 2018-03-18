/// @description  Draw self and selection box

if map_clicked = false
{
    if (px != -1 && py != -1)  
    {
        draw_set_alpha(1);
        draw_set_color(c_lime)
        draw_line_width(px,py,mouse_x,py,3)
        draw_line_width(px,py,px,mouse_y,3)
        draw_line_width(mouse_x,py,mouse_x,mouse_y,3)
        draw_line_width(px,mouse_y,mouse_x,mouse_y,3)
        draw_set_alpha(1);
    }
}
if global.attack_button = false
draw_sprite_ext(spr_cursor, 0,(mouse_x),(mouse_y),1,1,0,cursor_color,1)
else
// DRAW TARGET SPRITE FOR ATTACK MOVE
draw_sprite_ext(spr_target, 0,(mouse_x),(mouse_y),1,1,0,cursor_color,1)

draw_set_alpha(1)

