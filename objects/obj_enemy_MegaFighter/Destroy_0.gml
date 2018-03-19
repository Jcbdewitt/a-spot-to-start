/// @description  CREATE OBJ_DEATH && REMOVE SELF FROM GRID
death = instance_create(x,y, obj_death)

if x = point_x && y = point_y
mp_grid_clear_cell(global.grid,floor(x / GRID_SIZE), floor(y / GRID_SIZE));
else
mp_grid_clear_cell(global.grid, path_get_point_x(path, path_pos ) div GRID_SIZE, path_get_point_y(path, path_pos ) div GRID_SIZE) 

audio_play_sound(snd_explosion, 1, 0)

