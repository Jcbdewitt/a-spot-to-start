// CHECK THE 4 SPOTS AROUND ITSELF TO CHOOSE THE RIGHT SPRITE

// TOP RIGHT CORNER
if !place_meeting(x + 32, y, obj_dirt) && !place_meeting(x, y - 32, obj_dirt) && place_meeting(x - 32, y, obj_dirt) && place_meeting(x, y+32, obj_dirt)
{
    sprite_index = spr_dirt_top_right
}

// TOP LEFT CORNER
if place_meeting(x + 32, y, obj_dirt) && !place_meeting(x, y - 32, obj_dirt) && !place_meeting(x - 32, y, obj_dirt) && place_meeting(x, y+32, obj_dirt)
{
    sprite_index = spr_dirt_top_left
}

// BOTTOM LEFT CORNER
if place_meeting(x + 32, y, obj_dirt) && place_meeting(x, y - 32, obj_dirt) && !place_meeting(x - 32, y, obj_dirt) && !place_meeting(x, y+32, obj_dirt)
{
    sprite_index = spr_dirt_bottom_left
}

// BOTTOM RIGHT CORNER
if !place_meeting(x + 32, y, obj_dirt) && place_meeting(x, y - 32, obj_dirt) && place_meeting(x - 32, y, obj_dirt) && !place_meeting(x, y+32, obj_dirt)
{
    sprite_index = spr_dirt_bottom_right
}

// RIGHT SIDE LINEAR
//  RIGHT                                 UP                                    LEFT                                  DOWN
if !place_meeting(x + 32, y, obj_dirt) && place_meeting(x, y - 32, obj_dirt) && place_meeting(x - 32, y, obj_dirt) && place_meeting(x, y+32, obj_dirt)
{
    sprite_index = spr_dirt_middle_right
}

//  TOP SIDE LINEAR
//  RIGHT                                 UP                                     LEFT                                  DOWN
if  place_meeting(x + 32, y, obj_dirt) && !place_meeting(x, y - 32, obj_dirt) && place_meeting(x - 32, y, obj_dirt) && place_meeting(x, y+32, obj_dirt)
{
    sprite_index = spr_dirt_top_middle
}

//  LEFT SIDE LINEAR
//  RIGHT                                 UP                                     LEFT                                  DOWN
if  place_meeting(x + 32, y, obj_dirt) && place_meeting(x, y - 32, obj_dirt) && !place_meeting(x - 32, y, obj_dirt) && place_meeting(x, y+32, obj_dirt)
{
    sprite_index = spr_dirt_middle_left
}

//  BOTTOM SIDE LINEAR
//  RIGHT                                 UP                                    LEFT                                  DOWN
if  place_meeting(x + 32, y, obj_dirt) && place_meeting(x, y - 32, obj_dirt) && place_meeting(x - 32, y, obj_dirt) && !place_meeting(x, y+32, obj_dirt)
{
    sprite_index = spr_dirt_bottom_middle
}

//  MIDDLE
//  RIGHT                                 UP                                    LEFT                                  DOWN
if  place_meeting(x + 32, y, obj_dirt) && place_meeting(x, y - 32, obj_dirt) && place_meeting(x - 32, y, obj_dirt) && place_meeting(x, y+32, obj_dirt)
{
    sprite_index = spr_dirt_center
}


