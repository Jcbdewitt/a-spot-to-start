draw_sprite_ext(spr_title,0,x,y, size, size,0,c_white,1)

draw_set_font(fnt_julian)
draw_set_color(c_black)
draw_text(x+2, y-64+2, string_hash_to_newline("GAME MAKER"))
draw_set_font(fnt_julian)
draw_set_color(c_red)
draw_text(x, y-64, string_hash_to_newline("GAME MAKER"))

draw_set_color(c_black)
draw_set_font(fnt_julian_small)
draw_text(x+2,720+2, string_hash_to_newline(@"Thanks for checking out what I have so far! 
I hope to add a lot more features in the future to make this into a full RTS experience!"))
draw_set_color(c_yellow)
draw_set_font(fnt_julian_small)
draw_text(x,720, string_hash_to_newline(@"Thanks for checking out what I have so far! 
I hope to add a lot more features in the future to make this into a full RTS experience!"))

