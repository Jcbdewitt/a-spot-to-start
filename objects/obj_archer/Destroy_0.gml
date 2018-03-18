/// @description  CREATE OBJ_DEATH && REMOVE SELF FROM GRID && CONTROL GROUPS
/// CREATE OBJ_DEATH && REMOVE SELF FROM GRID
death = instance_create(x,y, obj_death)
if x = point_x && y = point_y
mp_grid_clear_cell(global.grid,floor(x / GRID_SIZE), floor(y / GRID_SIZE));
else
mp_grid_clear_cell(global.grid, path_get_point_x(path, path_pos ) div GRID_SIZE, path_get_point_y(path, path_pos ) div GRID_SIZE) 

with death
{
    unit = "archer"
    color = c_blue
    img_angle = other.img_angle
}




/// DELETE ITSELF FROM AND CONTROL GROUP IT WAS IN

if ds_list_find_index(global.control_group_none, id) != -1
    ds_list_delete(global.control_group_none, ds_list_find_index(global.control_group_none, id))


