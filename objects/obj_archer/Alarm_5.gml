/// @description  HEALTH REGENERATION

alarm[5] = regeneration

if hp < max_hp
{
    hp += 1
    if hp >= max_hp
    {
        hp = max_hp

    }
}

