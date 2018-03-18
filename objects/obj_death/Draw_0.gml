/// @description DRAW PLAYER SPRITE

draw_set_alpha(1) 
if unit = "archer"
{
// DRAW GRAY SCALE
draw_sprite_ext(spr_archer_death_grey,img_index,x,y,1,1,img_angle,color,img_alpha)
// DRAW SPRITE
draw_sprite_ext(spr_archer_death,img_index,x,y,1,1,img_angle,c_white,img_alpha)
}

if unit = "footman"
{
// DRAW GRAY SCALE
draw_sprite_ext(spr_footman_death_grey,img_index,x,y,1,1,img_angle,color,img_alpha)
// DRAW SPRITE
draw_sprite_ext(spr_footman_death,img_index,x,y,1,1,img_angle,c_white,img_alpha)
}

if unit = "priest"
{
// DRAW GRAY SCALE
draw_sprite_ext(spr_cleric_death_gray,img_index,x,y,1,1,img_angle,color,img_alpha)
// DRAW SPRITE
draw_sprite_ext(spr_cleric_death,img_index,x,y,1,1,img_angle,c_white,img_alpha)
}

if unit = "knight"
{
// DRAW GRAY SCALE
draw_sprite_ext(spr_knight_death_gray,img_index,x,y,1,1,img_angle,color,img_alpha)
// DRAW SPRITE
draw_sprite_ext(spr_knight_death,img_index,x,y,1,1,img_angle,c_white,img_alpha)
}

