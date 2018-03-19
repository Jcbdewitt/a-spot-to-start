/// @description  ATTACK STATE
/*
if state = "attack"
{
    if x = point_x && y = point_y
    {
        // RETURN TO START
        if point_distance(x,y,xstart,ystart) > 448//choose(640,576,448)
        {
            state = "return to start"
            target = -4
            //create_new_target = true
            // CREATE TARGET AT THE TARGETTED UNIT
            target_x = xstart
            target_y = ystart
            // CREATE TARGET CLOSEST TO THE STARTING POSITION AS POSSIBLE
            scr_free_target_trees()
            exit
        }
        
        // TARGET THE CLOSEST ENEMY UNIT
        var unit = instance_nearest(x,y, obj_player_parent)
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

/* */
/// IDLE STATE
if state = "idle"
{
    // RANDOMLY ROTATE THE UNIT
    if alarm[2] = -1
        alarm[2] = irandom_range(90, 420)
    
    if instance_exists(obj_player_parent)
    {
        // IF CLOSE TO AN EMENY, STATE = 'ATTACK'
        if distance_to_object(obj_player_parent) < agro_range
        {
            target = instance_nearest(x,y, obj_player_parent)
            state = "idle attack"
            idle_x = x
            idle_y = y
            create_new_target = true
            // CREATE TARGET AT THE TARGETTED UNIT
            target_x = floor(target.x / GRID_SIZE) * GRID_SIZE + (GRID_SIZE / 2)
            target_y = floor(target.y / GRID_SIZE) * GRID_SIZE + (GRID_SIZE / 2)
            // CREATE TARGET CLOSEST TO THE TARGETTED UNIT
            scr_set_attack_targets()
        }
    }
}

/* */
/// RETURN TO START STATE

if state = "return to start"
{
    if x = point_x && y = point_y
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
    }
}

/* */
/// IDLE ATTACK STATE

if state = "idle attack"
{
    if x = point_x && y = point_y && attack = -1
    {
        if instance_exists(target)
        {
            // RETURN TO START
            if point_distance(x,y,idle_x,idle_y) > choose(448,576,640)
            {
                state = "return to start"
                target = -4
                create_new_target = true
                attack = -1
                // CREATE TARGET AT THE LAST IDLE POSITION
                target_x = idle_x
                target_y = idle_y
                // CREATE TARGET AS CLOSE TO THE IDLE POSITION AS POSSIBLE
                scr_free_target_trees()
                exit
            }
            
            // TARGET THE CLOSEST ENEMY UNIT
            /*
            var unit = instance_nearest(x,y, obj_player_parent)
            if unit != target
            {
                target = unit
                create_new_target = true
                // CREATE TARGET AT THE TARGETTED UNIT
                target_x = floor(target.x / GRID_SIZE) * GRID_SIZE + (GRID_SIZE / 2)
                target_y = floor(target.y / GRID_SIZE) * GRID_SIZE + (GRID_SIZE / 2)
                // CREATE TARGET CLOSEST TO THE TARGETTED UNIT
                scr_set_attack_targets()
                
            } */
            // IF THE TARGETTED UNIT HAS MOVED, CREATE A NEW TARGET AND PATH
            if point_distance(target.x, target.y, target_x, target_y) > attack_range //64
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
            var unit = instance_nearest(x,y, obj_player_parent)
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
            else
            {
                // IF THE UNIT IS NOT ALREADY AT THE IDLE START POSITION, THEN RETURN TO START
                if x != idle_x or y != idle_y
                {
                    state = "return to start"
                    target = -4
                    create_new_target = true
                    attack = -1
                    // CREATE TARGET AT THE LAST IDLE POSITION
                    target_x = idle_x
                    target_y = idle_y
                    // CREATE TARGET AS CLOSE TO THE IDLE POSITION AS POSSIBLE
                    scr_free_target_trees()
                    exit
                }
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

/* */
/*  */
