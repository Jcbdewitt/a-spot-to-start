/// @description  CREATE THE GRID, ADD WALLS
global.grid = mp_grid_create(0,0,room_width/GRID_SIZE,room_height/GRID_SIZE,GRID_SIZE,GRID_SIZE)

mp_grid_add_instances(global.grid, obj_wall,0)
mp_grid_add_instances(global.grid, obj_facility, 0)
mp_grid_add_instances(global.grid, obj_rock, 0)

show_grid = false

draw_the_path = false

///CONTROL GROUP VARIABLES

global.control_group_none = ds_list_create()
global.group_selected = global.control_group_none
/*global.control_group_1 = ds_list_create()
global.control_group_2 = ds_list_create()
global.control_group_3 = ds_list_create()
global.control_group_4 = ds_list_create()
global.control_group_5 = ds_list_create()
global.control_group_6 = ds_list_create()
global.control_group_7 = ds_list_create()
global.control_group_8 = ds_list_create()
global.control_group_9 = ds_list_create()
global.control_group_0 = ds_list_create()



list_size = 0

focus_on_group = false
num_pressed = -1 // WHICH NUMBER BUTTON WAS PRESSED LAST?
prev_num_pressed = -1

/* */
/// DEBUGGING

frames = fps_real

alarm[0] = 15

/* */
/// GLOBAL VOICE
global.unit_speaking = false

/* */
/// SHOW HP BARS

show_hp = true // use tab to toggle on and off

/* */
/// GLOBAL VARIABLES
global.attack_button = false

/* */
/// GUI

footman_count = 0
archer_count = 0


/* */
/*  */
