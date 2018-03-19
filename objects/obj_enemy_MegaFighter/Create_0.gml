/// @description  snap xstart and ystart to grid
x = floor(x/GRID_SIZE) * GRID_SIZE + (GRID_SIZE/2)
y = floor(y/GRID_SIZE) * GRID_SIZE + (GRID_SIZE/2)

xstart = x
ystart = y

idle_x = xstart
idle_y = ystart

image_speed = 0

selected = false

// TARGETTING
target = -1
target_x = x
target_y = y

state = "idle"

// HIT POINTS
max_hp = 100
hp = max_hp
armor = 0
damage_reduction = ((armor) * 0.06)/(1 + 0.06 * (armor)) 

light_radius = 320

spawn_x = 0
spawn_y = 0

inspired = false
inspire_index = 0

/// INIT PATHFINDING
path = path_add()
path_pos = 0
path_success = false

//next point on path
point_x = x
point_y = y

mp_grid_add_cell(global.grid,floor(x / GRID_SIZE), floor(y / GRID_SIZE));

wait = 0

create_new_target = false
p_success = false
closest_distance = 0
closest_cell = "noone"

spd = 6

state = "idle"

// HIT POINTS
max_hp = 220
hp = max_hp

healing = false

regeneration = 45
alarm[5] = regeneration

///ATTACKING

attack_damage = 0
min_damage = 15
max_damage  = 20
attack_range = 320
agro_range = 320
can_attack = true
attack_over = true // end of the attack animation, the unit can now chase the target

attack_rate = 40.5 // 1.35

building_target = -4
unit_target = -4

attack_move_x = -1
attack_move_y = -1

attack = -1

