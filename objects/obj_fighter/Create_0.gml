/// @description  snap xstart and ystart to grid
x = floor(x/GRID_SIZE) * GRID_SIZE + (GRID_SIZE/2)
y = floor(y/GRID_SIZE) * GRID_SIZE + (GRID_SIZE/2)



selected = false
image_speed = 0

// TARGETTING
target = -4
target_x = x
target_y = y
spd = 6

state = "idle"

// HIT POINTS
max_hp = 245
hp = max_hp
armor = 0
damage_reduction = (armor * 0.06)/(1 + 0.06 * armor) 

idle_x = 0
idle_y = 0

healing = false

regeneration = 45
alarm[5] = regeneration

//image_speed = .3
image_angle = 0

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



/// ATTACKING
attack = -1

attack_button = false

attack_range = 320
agro_range = 320

min_damage = 15
max_damage  = 20
attack_damage = 0
