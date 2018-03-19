/// @description  RIGHT MOUSE BUTTON PRESSED
if mouse_check_button_pressed(mb_right)
{
    if selected = true
    {
        create_new_target = true
        
        //target = instance_position(mouse_x, mouse_y, obj_target)
        if instance_exists(target)
        {
            state = "mine"
        }
        else // NO TARGET, SO MOVE
        {
            state = "move"
        }
            
        
        // CREATE TARGETS
        target_x = floor(mouse_x / GRID_SIZE) * GRID_SIZE + (GRID_SIZE / 2)
        target_y = floor(mouse_y / GRID_SIZE) * GRID_SIZE + (GRID_SIZE / 2)
        scr_create_targets()
        scr_free_target_trees()
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
    }
}

/// IDLE STATE

if state = "idle"
{
    // RANDOMLY ROTATE THE UNIT
    if alarm[2] = -1
        alarm[2] = irandom_range(90, 420)
        show_debug_message("idle")
    
    if distance_to_object(target) < agro_range
    {
        //state = "MINE"
        idle_x = x
        idle_y = y
    }
    else
    {
        target = -4
    }
}

///mine state
if state == "mine"
{
    if x == point_x && y == point_y
    {
        if instance_exists(target)
        {
            
            // TARGET THE CLOSEST rock
            var unit = instance_nearest(x,y, obj_rock)
            if unit != target
            {
                target = unit
                create_new_target = true
                // CREATE TARGET AT THE TARGETTED UNIT
                target_x = floor(target.x / GRID_SIZE) * GRID_SIZE + (GRID_SIZE / 2)
                target_y = floor(target.y / GRID_SIZE) * GRID_SIZE + (GRID_SIZE / 2)  
            }
			if x == point_x && y == point_y //&& attack = -1
		    {
		        scr_move_next_point()
		    }
    
		    // IF NOT AT END OF PATH, THEN MOVE !!!
		    if path_pos < path_get_number(path)
		    {
		        mp_linear_step(point_x, point_y, spd, false)
		    }
		    // IF AT END OF PATH, STATE = 'IDLE'
		    //if x = target_x && y = target_y
		    {
		        mp_grid_add_cell(global.grid, floor(x /GRID_SIZE), floor(y / GRID_SIZE))
		        wait = 0
		        alarm[0] = -1
		        state = "idle"
		        image_speed = 0
		    }
        }
		/*
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
                exit
            }
                

        }
		*/
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

if state == "mined" {
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
        image_speed = 0
    }	
}

var nearest_rock = instance_nearest(x,y,obj_rock)
if point_distance(x,y,nearest_rock.x, nearest_rock.y) < 65 {
	mining_timer = mining_timer - 1
	if(mining_timer < 0) {
		state = "mined"
		last_rock = nearest_rock;
	}
}
else {
	mining_timer = mining_timer_reset
}