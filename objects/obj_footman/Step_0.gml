/// @description  RIGHT MOUSE BUTTON PRESSED
if mouse_check_button_pressed(mb_right)
{
    if selected = true
    {
        create_new_target = true
        alarm[2] = -1
        alarm[1] = -1 // attack alarm
        attack = -1
        
        // ATTACK MOVE OR MOVE?
        if global.attack_button = true
        {
            target = instance_position(mouse_x, mouse_y, obj_all_units_parent)// obj_enemy_parent)
            
            if target != id
            {
                if instance_exists(target)
                    state = "attack"
                else
                    state = "attack move"
            }
            else
                state = "idle"
        }
        else // NO ATTACK BUTTON
        {
            target = instance_position(mouse_x, mouse_y, obj_enemy_parent)
            if instance_exists(target)
            {
                // CREATE TARGET CLOSEST TO THE TARGETTED UNIT
                scr_set_attack_targets()
                state = "attack"
            }
            else // NO TARGET, SO MOVE
            {
                state = "move"
            }
            
        }
        // CREATE TARGETS
        target_x = floor(mouse_x / GRID_SIZE) * GRID_SIZE + (GRID_SIZE / 2)
        target_y = floor(mouse_y / GRID_SIZE) * GRID_SIZE + (GRID_SIZE / 2)
        scr_create_targets()
        scr_free_target_trees()
    }
}



/// ATTACK STATE

if state = "attack"
{
    if x = point_x && y = point_y && attack = -1
    {
        // IF THE TARGETTED UNIT HAS MOVED, CREATE A NEW TARGET AND PATH 
        if instance_exists(target)
        {
            if point_distance(target.x, target.y, target_x, target_y) > 64
            {
                create_new_target = true
                // CREATE TARGET AT THE TARGETTED UNIT
                target_x = floor(target.x / GRID_SIZE) * GRID_SIZE + (GRID_SIZE / 2)
                target_y = floor(target.y / GRID_SIZE) * GRID_SIZE + (GRID_SIZE / 2)
                // CREATE TARGET CLOSEST TO THE TARGETTED UNIT
                scr_set_attack_targets()
            }  
            scr_attack_next_point()
        }
        else if attack = -1
        // NO TARGET?
        {
            target_x = x
            target_y = y
            state = "idle"
            //image_speed = 0
            spr_index = spr_stand
            spr_index_grey = spr_stand_grey
            image_index = 0
            exit
        }
    }
    
    // IF NOT AT END OF PATH, THEN MOVE !!!
    if path_pos < path_get_number(path)
    {
        mp_linear_step(point_x, point_y, spd, false)
    }
    else
    // IF AT END OF PATH, ADD CELL TO THE GRID
    {
        mp_grid_add_cell(global.grid, floor(x /GRID_SIZE), floor(y / GRID_SIZE))
        wait = 0
        if target = -4
        {
            spr_index = spr_stand
            spr_index_grey = spr_stand_grey
            image_index = 0
        }
    }
}

/// MOVE STATE

if state = "move"
{
    if x = point_x && y = point_y //&& attack = -1
    {
        scr_move_next_point()
    }
    
    // IF NOT AT END OF PATH, THEN MOVE !!!
    if path_pos < path_get_number(path)
    {
        mp_linear_step(point_x, point_y, spd, false)
    }
    // IF AT END OF PATH, STATE = 'IDLE'
    if x = target_x && y = target_y
    {
        mp_grid_add_cell(global.grid, floor(x /GRID_SIZE), floor(y / GRID_SIZE))
        wait = 0
        alarm[0] = -1
        state = "idle"
        spr_index = spr_footman_stand
        spr_index_grey = spr_footman_stand_grey
        image_speed = 0
    }
}

/// ATTACK MOVE STATE
if state = "attack move"
{
    if x = point_x && y = point_y //&& attack = -1
    {
        scr_move_next_point()
        
        target = instance_nearest(x,y, obj_enemy_parent)
        if distance_to_object(target) < agro_range
        {
            state = "idle attack"
            exit
        }
    } 
    // IF NOT AT END OF PATH, THEN MOVE !!!
    if path_pos < path_get_number(path)
    {
        mp_linear_step(point_x, point_y, spd, false)
    }
    // IF AT END OF PATH, STATE = 'IDLE'
    if x = target_x && y = target_y
    {
        mp_grid_add_cell(global.grid, floor(x /GRID_SIZE), floor(y / GRID_SIZE))
        wait = 0
        alarm[0] = -1
        state = "idle"
        spr_index = spr_stand
        spr_index_grey = spr_stand_grey
        image_speed = 0
    }
}

/// IDLE STATE

if state = "idle"
{
    // RANDOMLY ROTATE THE UNIT
    if alarm[2] = -1
        alarm[2] = irandom_range(90, 420)
        
    target = instance_nearest(x,y, obj_enemy_parent)
    if distance_to_object(target) < agro_range
    {
        state = "idle attack"
        idle_x = x
        idle_y = y
    }
    else
    {
        target = -4
    }
}

/// IDLE ATTACK STATE

if state = "idle attack"
{
    if x = point_x && y = point_y
    {
        if instance_exists(target)
        {
            
            // TARGET THE CLOSEST ENEMY UNIT
            var unit = instance_nearest(x,y, obj_enemy_parent)
            if unit != target
            {
                target = unit
                create_new_target = true
                // CREATE TARGET AT THE TARGETTED UNIT
                target_x = floor(target.x / GRID_SIZE) * GRID_SIZE + (GRID_SIZE / 2)
                target_y = floor(target.y / GRID_SIZE) * GRID_SIZE + (GRID_SIZE / 2)
                // CREATE TARGET CLOSEST TO THE TARGETTED UNIT
                scr_set_attack_targets()
                
            }
            // IF THE TARGETTED UNIT HAS MOVED, CREATE A NEW TARGET AND PATH
            if point_distance(target.x, target.y, target_x, target_y) > 64
            {
                create_new_target = true
                // CREATE TARGET AT THE TARGETTED UNIT
                target_x = floor(target.x / GRID_SIZE) * GRID_SIZE + (GRID_SIZE / 2)
                target_y = floor(target.y / GRID_SIZE) * GRID_SIZE + (GRID_SIZE / 2)
                // CREATE TARGET CLOSEST TO THE TARGETTED UNIT
                scr_set_attack_targets()
            }
            
            scr_attack_next_point()
        }
        else
        //TARGET WAS DESTROYED
        {
            // TARGET THE CLOSEST ENEMY UNIT
            var unit = instance_nearest(x,y, obj_enemy_parent)
            if distance_to_object(unit) < attack_range
            {
                target = unit
                create_new_target = true
                // CREATE TARGET AT THE TARGETTED UNIT
                target_x = floor(target.x / GRID_SIZE) * GRID_SIZE + (GRID_SIZE / 2)
                target_y = floor(target.y / GRID_SIZE) * GRID_SIZE + (GRID_SIZE / 2)
                // CREATE TARGET CLOSEST TO THE TARGETTED UNIT
                scr_set_attack_targets()
            }
            
            else if attack = -1 //&& // IF THE UNIT IS NOT ALREADY AT THE IDLE START POSITION, THEN RETURN TO START
            {
                state = "idle"
                target = -4
                spr_index = spr_stand
                spr_index_grey = spr_stand_grey
                exit
            }
                

        }
    }
    
    // IF NOT AT END OF PATH, THEN MOVE !!!
    if path_pos < path_get_number(path)
    {
        mp_linear_step(point_x, point_y, spd, false)
    }
    else
    // IF AT END OF PATH, ADD CELL TO THE GRID
    {
        mp_grid_add_cell(global.grid, floor(x /GRID_SIZE), floor(y / GRID_SIZE))
        wait = 0
    }
}

