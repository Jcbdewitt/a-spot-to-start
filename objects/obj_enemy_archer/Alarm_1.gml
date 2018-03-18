/// @description  ATTACK ALARM

if attack = -1 && distance_to_object(target) <= attack_range
{
    attack = 0
    image_index = 0
    alarm[1] = 6
    if instance_exists(target)
        img_angle = point_direction(x,y,target.x,target.y) div 45 * 45
    exit
}
if attack = 0
{
    attack = 1
    image_index = 1
    alarm[1] = 6
    if instance_exists(target)
        img_angle = point_direction(x,y,target.x,target.y) div 45 * 45
    exit
}
if attack = 1
{
    attack = 2
    image_index = 2
    alarm[1] = 6
    exit
}
if attack = 2
{
    if instance_exists(target)
    {
        attack = 3
        image_index = 3
        alarm[1] = 12
        arrow = instance_create(x, y, obj_arrow)
        
        // CALCULATE DAMAGE
        attack_damage = irandom_range(min_damage, max_damage)
        attack_damage -= (other.attack_damage * target.damage_reduction)
        
        with arrow
        {
            target = other.target
            target_x = target.x
            target_y = target.y
            damage = other.attack_damage
        }
        audio_play_sound(snd_arrow, 1, 0)
        img_angle = point_direction(x,y,target.x,target.y) div 45 * 45
        exit
    }
    else // NO TARGET ANY LONGER
    {
        attack = -1
        alarm[1] = 15 
        //spr_index = spr_stand
        //spr_index_grey = spr_stand_grey
        //state = 'idle'
        
        state = "return to start"
        target = -4
        create_new_target = true
        attack = -1
        // CREATE TARGET AT THE LAST IDLE POSITION
        target_x = idle_x
        target_y = idle_y
    }  
}
if attack = 3
{
    attack = 4
    spr_index = spr_stand
    spr_index_grey = spr_stand_grey
    image_index = 0
    alarm[1] = 15
    if instance_exists(target)
        img_angle = point_direction(x,y,target.x,target.y) div 45 * 45
    exit
}
if attack = 4
{
    attack = -1
    alarm[1] = 15
    if instance_exists(target)
        img_angle = point_direction(x,y,target.x,target.y) div 45 * 45
    exit
}


