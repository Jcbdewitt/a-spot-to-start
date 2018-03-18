/// @description DRAW GRID
draw_set_alpha(.5) 

if show_grid = true
{
    mp_grid_draw(global.grid)
    
    draw_set_color(c_black)
    draw_set_alpha(1)
    
    //vertical lines
    for (i = GRID_SIZE ; i < room_width; i += GRID_SIZE)
    {
        draw_line(i, 0, i, room_height)
    }
    //horizontal lines
    for (j = GRID_SIZE ; j < room_height; j += GRID_SIZE)
    {
        draw_line(0, j, room_width, j)
    }
    
    draw_set_alpha(1) 
}

///DRAW PATH
if draw_the_path = true
{
    draw_set_alpha(1)
    draw_set_color(c_black)
    
    // loop through all the player's units and draw their path
    with obj_player_parent
    {
        if path_exists(path)
        {
            draw_path(path,x,y,1)
            
            //DRAW POINTS ON THE PATH
            for(i = 0 ; i < path_get_number(path); i ++)
            {
                draw_circle(path_get_point_x(path, i),path_get_point_y(path, i), 6, false)
            }
        }
    }
    
    // loop through all enemy units and draw their path
    with obj_enemy_parent
    {
        if path_exists(path)
        {
            draw_path(path,x,y,1)
            
            //DRAW POINTS ON THE PATH
            for(i = 0 ; i < path_get_number(path); i ++)
            {
                draw_circle(path_get_point_x(path, i),path_get_point_y(path, i), 6, false)
            }
        }
    }
}

