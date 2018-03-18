/// @description  DRAW HP and MANA BARS
if show_hp = true
{
    with obj_player_parent
    {
        draw_set_alpha(1)
        // RED BAR
        draw_rectangle_colour(x-25,y-45,x-25+50,y-40,c_red,c_red,c_red,c_red,false)
        // GREEN BAR
        draw_rectangle_colour(x-25,y-45,x+(50/max_hp)*hp-25,y-40,c_lime,c_lime,c_lime,c_lime,false)
        draw_set_alpha(.5)
        // SHADING OUTLINE
        draw_rectangle_colour(x-25+1,y-45+1,x-25+50-1,y-40-1,c_black,c_black,c_black,c_black,true)
        // DRAW OUTLINE
        draw_set_alpha(1)
        draw_rectangle_colour(x-26,y-46,x-26+50,y-39,c_black,c_black,c_black,c_black,true)
        draw_rectangle_colour(x-25,y-45,x-25+50,y-40,c_black,c_black,c_black,c_black,true)
        
        /// HEALING BAR
        if healing = true && obj_controller.show_hp = true
        draw_rectangle_colour(x-26-2,y-45-2,x-26+50+2,y-40+2,c_aqua,c_aqua,c_aqua,c_aqua,true)
    }
    
    with obj_enemy_parent
    {
        draw_set_alpha(1)
        draw_rectangle_colour(x-25,y-45,x-25+50,y-40,c_red,c_red,c_red,c_red,false)
        draw_rectangle_colour(x-25,y-45,x+(50/max_hp)*hp-25,y-40,c_lime,c_lime,c_lime,c_lime,false)
        draw_set_alpha(.5)
        draw_rectangle_colour(x-25+1,y-45+1,x-25+50-1,y-40-1,c_black,c_black,c_black,c_black,true)
        // DRAW OUTLINE
        draw_set_alpha(1)
        draw_rectangle_colour(x-26,y-46,x-26+50,y-39,c_black,c_black,c_black,c_black,true)
        draw_rectangle_colour(x-25,y-45,x-25+50,y-40,c_black,c_black,c_black,c_black,true)
        
        /// HEALING BAR
        if healing = true && obj_controller.show_hp = true
        draw_rectangle_colour(x-26-2,y-45-2,x-26+50+2,y-40+2,c_aqua,c_aqua,c_aqua,c_aqua,true)
    }
}

