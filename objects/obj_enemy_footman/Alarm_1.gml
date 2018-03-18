/// @description  ATTACK ALARM

if attack = -1 && distance_to_object(target) <= attack_range
{
    attack = 0
    alarm[1] = round(attack_rate * 2)
    exit
}
if attack = 0
{
    attack = 1
    alarm[1] = round(attack_rate * 2)
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
        alarm[1] = round(attack_rate * 4)
        // CALCULATE DAMAGE
        attack_damage = irandom_range(min_damage, max_damage)
        attack_damage -= (attack_damage * target.damage_reduction)
        // REDUCE TARGET'S HITPOINTS
        target.hp -= attack_damage 
        if target.hp <= 0
            with target
                instance_destroy()
        audio_play_sound(snd_sword, 1, 0)
    }
    else
    {
        attack = -1
        alarm[1] = round(attack_rate * 5)
        /*spr_index = spr_stand
        spr_index_grey = spr_stand_grey
        state = 'idle'*/
        
        
        state = "return to start"
        target = -4
        create_new_target = true
        attack = -1
        // CREATE TARGET AT THE LAST IDLE POSITION
        target_x = idle_x
        target_y = idle_y
    }
    exit
}
if attack = 3
{
    attack = 4
    alarm[1] = round(attack_rate * 5)
    exit
}
if attack = 4
{
    attack = -1
    alarm[1] = round(attack_rate * 5)
    exit
}


/* */
/*  */
