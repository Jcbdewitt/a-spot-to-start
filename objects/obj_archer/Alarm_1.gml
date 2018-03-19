/// @description  ATTACK ALARM

if attack = -1 && distance_to_object(target) <= attack_range
{
    attack = 0
    alarm[1] = 6
    if instance_exists(target)
        img_angle = point_direction(x,y,target.x,target.y)// div 45 * 45
    exit
}
if attack = 0
{
    attack = 1
    alarm[1] = 6
    exit
}
if attack = 1
{
    attack = 2
    alarm[1] = 6
    exit
}
if attack = 2
{
    if instance_exists(target)
    {
        attack = 3
        alarm[1] = 12

        // CALCULATE DAMAGE
        attack_damage = irandom_range(min_damage, max_damage)
        attack_damage -= (other.attack_damage * target.damage_reduction)
        
        arrow = instance_create(x, y, obj_arrow)
        
        with arrow
        {
            target = other.target
            target_x = target.x
            target_y = target.y
            damage = other.attack_damage
        }
        if x > __view_get( e__VW.XView, 0 ) - 128 && x < __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) + 128 && y > __view_get( e__VW.YView, 0 ) - 128 && y < __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) + 128
        audio_play_sound(snd_arrow, 1, 0)
        exit
    }
    else // NO TARGET
    {
        attack = -1
        alarm[1] = 15
        state = "idle"
    }
    exit
}
if attack = 3
{
    attack = 4
    alarm[1] = 15
    exit
}
if attack = 4
{
    attack = -1
    alarm[1] = 15
    exit
}


