/// @description DRAW TARGET
/*
draw_set_alpha(.5)
draw_set_color(c_red)
draw_circle( target_x,target_y, 16, false)

draw_set_color(c_black)
//draw_text(x,y-64, 'target x: ' + string(floor(point_x * GRID_SIZE) - 32))
//draw_text(x,y-48, 'target y: ' + string(floor(point_y * GRID_SIZE) - 32))

/* */
///DRAW PATH
/*
draw_set_alpha(1)
draw_set_color(c_red)
if path_exists(path)
{
    draw_path(path,x,y,1)
    
    //DRAW POINTS ON THE PATH
    for(i = 0 ; i < path_get_number(path); i ++)
    {
        draw_circle(path_get_point_x(path, i),path_get_point_y(path, i), 6, false)
    }
}
//draw_text(x,y-64, 'wait ' + string(wait))
//draw_text(x,y-80, string(point_direction(point_x, point_y, path_get_point_x(path,path_pos + 1), path_get_point_y(path,path_pos +1))))
/*
draw_text(x,y-64, 'point x: ' + string(point_x))
draw_text(x,y-48, 'point y: ' + string(point_y))
draw_text(x,y-128, 'x: ' + string(x))
draw_text(x,y-96, 'y: ' + string(y))
if x = point_x && y = point_y
{
    draw_rectangle(x -32, y - 32, x +32, y+32,false)
    draw_rectangle(x -31, y - 31, x +31, y+31,true)
    draw_rectangle(x -30, y - 30, x +30, y+30,true)
}

/* */
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

/* */
///DRAW PLAYER SPRITE

draw_set_alpha(1) 

/* */
///DRAW STATE
/*draw_set_alpha(1)

draw_set_halign(fa_center)
draw_set_color(c_aqua)
draw_text(x+16,y,  wait)
//draw_text(x+16,y+32, max_damage)
//draw_text(x+16,y+64, string(alarm[5]))
/*
draw_text(x,y-80, "A1:" + string(alarm[1]))
draw_text(x,y-64, "A0:" + string(alarm[0]))
//draw_text(x+16,y+48, 'P Pos' + string(path_pos))
//draw_text(x+16,y+64, 'P Num:' + string(path_get_number(path)))


/* */
/*  */
draw_self();