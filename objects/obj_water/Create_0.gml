/// @description  IMAGE_SPEED AND RANDOM IMAGE INDEX
image_index = irandom(3)
image_speed = choose(.02, .025, .03)

/// CHOOSE SPRITE
spr_index = 0

// THE TREE OBJECT WILL CHECK THE 4 SPOTS AROUND ITSELF TO CHOOSE THE CORRECT SPRITE

// TOP RIGHT CORNER
if !place_meeting(x + 64, y, obj_water) && !place_meeting(x, y - 64, obj_water) && place_meeting(x - 64, y, obj_water) && place_meeting(x, y+64, obj_water)
{
    spr_index = spr_water_top_right
}

// TOP LEFT CORNER
if place_meeting(x + 64, y, obj_water) && !place_meeting(x, y - 64, obj_water) && !place_meeting(x - 64, y, obj_water) && place_meeting(x, y+64, obj_water)
{
    spr_index = spr_water_top_left
}

// BOTTOM LEFT CORNER
if place_meeting(x + 64, y, obj_water) && place_meeting(x, y - 64, obj_water) && !place_meeting(x - 64, y, obj_water) && !place_meeting(x, y+64, obj_water)
{
    spr_index = spr_water_bottom_left
}

// BOTTOM RIGHT CORNER
if !place_meeting(x + 64, y, obj_water) && place_meeting(x, y - 64, obj_water) && place_meeting(x - 64, y, obj_water) && !place_meeting(x, y+64, obj_water)
{
    spr_index = spr_water_bottom_right
}

// RIGHT SIDE LINEAR
//  RIGHT                                 UP                                    LEFT                                  DOWN
if !place_meeting(x + 64, y, obj_water) && place_meeting(x, y - 64, obj_water) && place_meeting(x - 64, y, obj_water) && place_meeting(x, y+64, obj_water)
{
    spr_index = spr_water_middle_right
}

//  TOP SIDE LINEAR
//  RIGHT                                 UP                                     LEFT                                  DOWN
if  place_meeting(x + 64, y, obj_water) && !place_meeting(x, y - 64, obj_water) && place_meeting(x - 64, y, obj_water) && place_meeting(x, y+64, obj_water)
{
    spr_index = spr_water_top_middle
}

//  LEFT SIDE LINEAR
//  RIGHT                                 UP                                     LEFT                                  DOWN
if  place_meeting(x + 64, y, obj_water) && place_meeting(x, y - 64, obj_water) && !place_meeting(x - 64, y, obj_water) && place_meeting(x, y+64, obj_water)
{
    spr_index = spr_water_middle_left
}

//  BOTTOM SIDE LINEAR
//  RIGHT                                 UP                                    LEFT                                  DOWN
if  place_meeting(x + 64, y, obj_water) && place_meeting(x, y - 64, obj_water) && place_meeting(x - 64, y, obj_water) && !place_meeting(x, y+64, obj_water)
{
    spr_index = spr_water_bottom_middle
}

// INSIDE CORNERS ---
//  RIGHT                                  UP                                     LEFT                                   DOWN
if  place_meeting(x + 64, y, obj_water) && place_meeting(x, y - 64, obj_water) && place_meeting(x - 64, y, obj_water) && place_meeting(x, y+64, obj_water) 
{
    // LAND TO THE LEFT AND DOWN
    if !place_meeting(x - 64, y + 64, obj_water)
    spr_index = spr_water_top_right_corner
    // LAND TO THE RIGHT AND DOWN
    if !place_meeting(x + 64, y + 64, obj_water)
    spr_index = spr_water_top_left_corner
    // LAND TO THE LEFT AND UP
    if !place_meeting(x - 64, y - 64, obj_water)
    spr_index = spr_water_bottom_right_corner
    // LAND TO THE RIGHT AND UP
    if !place_meeting(x + 64, y - 64, obj_water)
    spr_index = spr_water_bottom_left_corner
}





/// ADD CELL TO MP GRID
mp_grid_add_cell(global.grid,floor(x / GRID_SIZE), floor(y / GRID_SIZE));

