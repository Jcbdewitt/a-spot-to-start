/// @description  snap xstart and ystart to grid
x = floor(x/GRID_SIZE) * GRID_SIZE + (GRID_SIZE/2)
y = floor(y/GRID_SIZE) * GRID_SIZE + (GRID_SIZE/2)

/// INIT PATHFINDING
path = path_add()
path_pos = 0
path_success = false

//next point on path
point_x = x
point_y = y

mp_grid_add_cell(global.grid,floor(x / GRID_SIZE), floor(y / GRID_SIZE));

wait = 0

