/// @description  snap xstart and ystart to grid
x = floor(x/GRID_SIZE) * GRID_SIZE + (GRID_SIZE/2)
y = floor(y/GRID_SIZE) * GRID_SIZE + (GRID_SIZE/2)

image_speed = 0

/// variables

selected = false

// TARGETTING
target = -4
target_x = x
target_y = y
spd = 6

state = "idle"

// HIT POINTS
max_hp = 420
hp = max_hp
armor = 0
damage_reduction = ((armor) * 0.06)/(1 + 0.06 * (armor)) 

attacking = false

idle_x = 0
idle_y = 0

healing = false
regeneration = 90
alarm[5] = regeneration

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

attack_range = 32
// the distance the unit will check to see if there's an units close enough to attack
agro_range = 320


/// ATTACKING

attack = -1
attack_damage = 0
// minimum damage
min_damage = 13
// maximum damage
max_damage = 18

// is the attack button engaged?
attack_button = false

sprite_index = worker;
image_speed = 0;

// the team color of the unit
color = c_blue

