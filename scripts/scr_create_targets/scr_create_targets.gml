//NUMBER OF UNITS IN DS_LIST
list_size = ds_list_size(global.group_selected)            

//2 UNITS
if list_size = 2
{
    //LEFT
    if (ds_list_find_index(global.group_selected, id) = 0)
    {
        target_x -=0
        target_y +=0
    }
    //RIGHT
    if (ds_list_find_index(global.group_selected, id) = 1)
    {
        target_x +=64
        target_y +=0
    }
    exit; 
}

//3 UNITS
if list_size = 3
{
    //TOP LEFT
    if (ds_list_find_index(global.group_selected, id) = 0)
    {
        target_x -=64
        target_y -=64
    }
    //TOP RIGHT
    if (ds_list_find_index(global.group_selected, id) = 1)
    {
        target_x -=0
        target_y -=64
    } 
    //BOTTOM MIDDLE
    if (ds_list_find_index(global.group_selected, id) = 2)
    {
        target_x -=64
        target_y -=0
    } 
    exit; 
}
    
//4 UNITS    
if list_size = 4
{
    //TOP LEFT
    if (ds_list_find_index(global.group_selected, id) = 0)
    {
        target_x -=0
        target_y -=0
    }
    //TOP RIGHT
    if (ds_list_find_index(global.group_selected, id) = 1) //
    {
        target_x +=64
        target_y -=0
    }
    //BOTTOM LEFT
    if (ds_list_find_index(global.group_selected, id) = 2)
    {
        target_x +=0
        target_y +=64
    }
    //BOTTOM RIGHT
    if (ds_list_find_index(global.group_selected, id) = 3)
    {
        target_x += 64
        target_y += 64
    } 
    exit; 
}

//5 UNITS    
if list_size = 5
{
    //TOP LEFT
    if (ds_list_find_index(global.group_selected, id) = 0)
    {
        target_x -=64
        target_y -=64
    }
    //TOP MIDDLE
    if (ds_list_find_index(global.group_selected, id) = 1) 
    {
        target_x +=0
        target_y -=64
    }
    //TOP RIGHT
    if (ds_list_find_index(global.group_selected, id) = 2)
    {
        target_x +=64
        target_y -=64
    }
    //BOTTOM LEFT
    if (ds_list_find_index(global.group_selected, id) = 3)
    {
        target_x -=64
        target_y +=0
    } 
    //BOTTOM RIGHT
    if (ds_list_find_index(global.group_selected, id) = 4)
    {
        target_x +=64
        target_y +=0
    }
    exit;  
}

//6 UNITS    
if list_size = 6
{
    //TOP LEFT
    if (ds_list_find_index(global.group_selected, id) = 0)
    {
        target_x -=64
        target_y -=64
    }
    //TOP MIDDLE
    if (ds_list_find_index(global.group_selected, id) = 1) 
    {
        target_x +=0
        target_y -=64
    }
    //TOP RIGHT
    if (ds_list_find_index(global.group_selected, id) = 2)
    {
        target_x +=64
        target_y -=64
    }
    //BOTTOM LEFT
    if (ds_list_find_index(global.group_selected, id) = 3)
    {
        target_x -=64
        target_y +=0
    } 
    //BOTTOM MIDDLE
    if (ds_list_find_index(global.group_selected, id) = 4)
    {
        target_x -=0
        target_y +=0
    } 
    //BOTTOM RIGHT
    if (ds_list_find_index(global.group_selected, id) = 5)
    {
        target_x +=64
        target_y +=0
    }
    exit; 
}

//7 UNITS    
if list_size = 7
{
    //TOP LEFT
    if (ds_list_find_index(global.group_selected, id) = 0)
    {
        target_x -=64
        target_y -=64
    }
    //TOP MIDDLE
    if (ds_list_find_index(global.group_selected, id) = 1) 
    {
        target_x -=0
        target_y -=64
    }
    //TOP RIGHT
    if (ds_list_find_index(global.group_selected, id) = 2) 
    {
        target_x +=64
        target_y -=64
    }
    //MIDDLE CENTER
    if (ds_list_find_index(global.group_selected, id) = 3)
    {
        target_x -=0
        target_y +=0
    }
    //BOTTOM LEFT
    if (ds_list_find_index(global.group_selected, id) = 4)
    {
        target_x -=64
        target_y +=64
    } 
    //BOTTOM MIDDLE
    if (ds_list_find_index(global.group_selected, id) = 5)
    {
        target_x -=0
        target_y +=64
    } 
    //BOTTOM RIGHT
    if (ds_list_find_index(global.group_selected, id) = 6)
    {
        target_x +=64
        target_y +=64
    } 
    exit; 
}

//8 UNITS    
if list_size = 8
{
    //TOP LEFT
    if (ds_list_find_index(global.group_selected, id) = 0)
    {
        target_x -=64
        target_y -=64
    }
    //TOP MIDDLE
    if (ds_list_find_index(global.group_selected, id) = 1) 
    {
        target_x -=0
        target_y -=64
    }
    //TOP RIGHT
    if (ds_list_find_index(global.group_selected, id) = 2) 
    {
        target_x +=64
        target_y -=64
    }
    //MIDDLE LEFT
    if (ds_list_find_index(global.group_selected, id) = 3)
    {
        target_x -=64
        target_y +=0
    }
    //MIDDLE RIGHT
    if (ds_list_find_index(global.group_selected, id) = 4)
    {
        target_x +=64
        target_y +=0
    }
    //BOTTOM LEFT
    if (ds_list_find_index(global.group_selected, id) = 5)
    {
        target_x -=64
        target_y +=64
    } 
    //BOTTOM MIDDLE
    if (ds_list_find_index(global.group_selected, id) = 6)
    {
        target_x -=0
        target_y +=64
    } 
    //BOTTOM RIGHT
    if (ds_list_find_index(global.group_selected, id) = 7)
    {
        target_x +=64
        target_y +=64
    } 
    exit; 
}

// 9 UNITS    
if list_size = 9
{
    //TOP LEFT
    if (ds_list_find_index(global.group_selected, id) = 0)
    {
        target_x -=64
        target_y -=64
    }
    //TOP MIDDLE
    if (ds_list_find_index(global.group_selected, id) = 1) 
    {
        target_x -=0
        target_y -=64
    }
    //TOP RIGHT
    if (ds_list_find_index(global.group_selected, id) = 2) 
    {
        target_x +=64
        target_y -=64
    }
    //MIDDLE LEFT
    if (ds_list_find_index(global.group_selected, id) = 3)
    {
        target_x -=64
        target_y +=0
    }
    //MIDDLE RIGHT
    if (ds_list_find_index(global.group_selected, id) = 4)
    {
        target_x +=64
        target_y +=0
    }
    //BOTTOM LEFT
    if (ds_list_find_index(global.group_selected, id) = 5)
    {
        target_x -=64
        target_y +=64
    } 
    //BOTTOM MIDDLE
    if (ds_list_find_index(global.group_selected, id) = 6)
    {
        target_x -=0
        target_y +=64
    } 
    //BOTTOM RIGHT
    if (ds_list_find_index(global.group_selected, id) = 7)
    {
        target_x +=64
        target_y +=64
    } 
    //CENTER
    if (ds_list_find_index(global.group_selected, id) = 8)
    {
        target_x +=0
        target_y +=0
    } 
    exit; 
}
