/// @description  ARROW COLLISION WITH THE TARGET
if instance_exists(target)
{
    target_x = target.x
    target_y = target.y
    move_towards_point(target_x,target_y, spd)
    image_angle = direction
    
    
}
else
{
    move_towards_point(target_x,target_y, spd)
    image_angle = direction
    if distance_to_point(target_x, target_y) < 32 // = target_x && y = target_y
        instance_destroy()
}


