if img_index = 0
{
    img_index += 1
    alarm[0] = 90
    exit
}

if img_index = 1
{
    img_alpha -= .04
    
    alarm[0] = 4
    
    if img_alpha < 0
    instance_destroy()
}

