/// @description  DRAW HP BAR
/*
draw_rectangle_colour(x-30,y-45,x-30+50,y-40,c_red,c_red,c_red,c_red,false)
draw_rectangle_colour(x-30,y-45,x+(50/max_hp)*hp-30,y-40,c_lime,c_lime,c_lime,c_lime,false)
draw_rectangle_colour(x-30,y-45,x-30+50,y-40,c_black,c_black,c_black,c_black,true)

/* */

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
///DRAW PLAYER SPRITE

draw_set_alpha(1) 
// DRAW SHADOW

/* */
///DRAW STATE
/*

draw_set_halign(fa_center)
draw_set_color(c_aqua)
draw_text(x+16,y, string(state))
draw_text(x+16,y+32, 'Att:' +string(attack))
draw_text(x+16,y+64, 'Tar:' +string(target))

/* */
///  BOUNDING BOX
/*
draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true)

/* */
///DRAW TARGET
/*
draw_set_alpha(1)
draw_set_color(c_red)
draw_circle( target_x, target_y, 16, true)
draw_set_color(c_blue)
draw_circle( idle_x, idle_y, 16, true)


/* */
/*  */
draw_self();