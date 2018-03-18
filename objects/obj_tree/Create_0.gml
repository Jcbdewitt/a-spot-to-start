/// @description  PICK THE CORRECT SPRITE FOR THE TREE

// THE TREE OBJECT WILL CHECK THE 4 SPOTS AROUND ITSELF TO SELECT THE CORRECT SPRITE

// TOP RIGHT CORNER
if !place_meeting(x + 32, y, obj_tree) && !place_meeting(x, y - 32, obj_tree) && place_meeting(x - 32, y, obj_tree) && place_meeting(x, y+32, obj_tree)
{
    sprite_index = spr_tree_top_right
}

// TOP LEFT CORNER
if place_meeting(x + 32, y, obj_tree) && !place_meeting(x, y - 32, obj_tree) && !place_meeting(x - 32, y, obj_tree) && place_meeting(x, y+32, obj_tree)
{
    sprite_index = spr_tree_top_left
}

// BOTTOM LEFT CORNER
if place_meeting(x + 32, y, obj_tree) && place_meeting(x, y - 32, obj_tree) && !place_meeting(x - 32, y, obj_tree) && !place_meeting(x, y+32, obj_tree)
{
    sprite_index = spr_tree_bottom_left
}

// BOTTOM RIGHT CORNER
if !place_meeting(x + 32, y, obj_tree) && place_meeting(x, y - 32, obj_tree) && place_meeting(x - 32, y, obj_tree) && !place_meeting(x, y+32, obj_tree)
{
    sprite_index = spr_tree_bottom_right
}

// RIGHT SIDE LINEAR
//  RIGHT                                 UP                                    LEFT                                  DOWN
if !place_meeting(x + 32, y, obj_tree) && place_meeting(x, y - 32, obj_tree) && place_meeting(x - 32, y, obj_tree) && place_meeting(x, y+32, obj_tree)
{
    sprite_index = spr_tree_right_linear
}

//  TOP SIDE LINEAR
//  RIGHT                                 UP                                     LEFT                                  DOWN
if  place_meeting(x + 32, y, obj_tree) && !place_meeting(x, y - 32, obj_tree) && place_meeting(x - 32, y, obj_tree) && place_meeting(x, y+32, obj_tree)
{
    sprite_index = spr_tree_top_linear
}

//  LEFT SIDE LINEAR
//  RIGHT                                 UP                                     LEFT                                  DOWN
if  place_meeting(x + 32, y, obj_tree) && place_meeting(x, y - 32, obj_tree) && !place_meeting(x - 32, y, obj_tree) && place_meeting(x, y+32, obj_tree)
{
    sprite_index = spr_tree_left_linear
}

//  BOTTOM SIDE LINEAR
//  RIGHT                                 UP                                    LEFT                                  DOWN
if  place_meeting(x + 32, y, obj_tree) && place_meeting(x, y - 32, obj_tree) && place_meeting(x - 32, y, obj_tree) && !place_meeting(x, y+32, obj_tree)
{
    sprite_index = spr_tree_bottom_linear
}

//  MIDDLE
//  RIGHT                                 UP                                    LEFT                                  DOWN
if  place_meeting(x + 32, y, obj_tree) && place_meeting(x, y - 32, obj_tree) && place_meeting(x - 32, y, obj_tree) && place_meeting(x, y+32, obj_tree)
{
    sprite_index = spr_tree_middle
}


