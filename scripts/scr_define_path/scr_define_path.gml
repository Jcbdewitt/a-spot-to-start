/// @description  DEFINE THE PATH

path_success = mp_grid_path(global.grid,path, x, y, target_x, target_y, true)
    
if path_success == true
{
    path_pos = 0
    point_x = path_get_point_x(path, path_pos)
    point_y = path_get_point_y(path, path_pos)
    direction = point_direction(x,y,point_x,point_y)
}
