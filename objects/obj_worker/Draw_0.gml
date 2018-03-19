/// DRAW SELECTION BOX AROUND UNIT
if selected = true
{
    draw_set_alpha(.5)
    draw_set_color(c_black)
    draw_rectangle( x-32+1, y-32+1, x+32+1, y+32+1, true)
    draw_set_alpha(1)
    draw_set_color(c_yellow)
    draw_rectangle( x-32, y-32, x+32, y+32, true)
    draw_rectangle( x-31, y-31, x+31, y+31, true)
    draw_rectangle( x-30, y-30, x+30, y+30, true)
    draw_rectangle( x-29, y-29, x+29, y+29, true)
}

draw_self()