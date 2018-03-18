// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = -102; // obj_controller
global.__objectDepths[1] = 0; // obj_all_units_parent
global.__objectDepths[2] = -10001; // obj_cursor
global.__objectDepths[3] = 0; // obj_death
global.__objectDepths[4] = 0; // obj_obstacle
global.__objectDepths[5] = -10001; // obj_target
global.__objectDepths[6] = -1000; // obj_main_screen
global.__objectDepths[7] = -2; // obj_footman
global.__objectDepths[8] = -3; // obj_archer
global.__objectDepths[9] = 0; // obj_player_parent
global.__objectDepths[10] = 0; // obj_enemy_parent
global.__objectDepths[11] = 0; // obj_enemy_unit_parent
global.__objectDepths[12] = -1; // obj_enemy_footman
global.__objectDepths[13] = -1; // obj_enemy_archer
global.__objectDepths[14] = -102; // obj_arrow
global.__objectDepths[15] = 0; // obj_wall
global.__objectDepths[16] = -100; // obj_tree
global.__objectDepths[17] = 2; // obj_water
global.__objectDepths[18] = 100; // obj_dirt
global.__objectDepths[19] = 0; // obj_invisible_wall


global.__objectNames[0] = "obj_controller";
global.__objectNames[1] = "obj_all_units_parent";
global.__objectNames[2] = "obj_cursor";
global.__objectNames[3] = "obj_death";
global.__objectNames[4] = "obj_obstacle";
global.__objectNames[5] = "obj_target";
global.__objectNames[6] = "obj_main_screen";
global.__objectNames[7] = "obj_footman";
global.__objectNames[8] = "obj_archer";
global.__objectNames[9] = "obj_player_parent";
global.__objectNames[10] = "obj_enemy_parent";
global.__objectNames[11] = "obj_enemy_unit_parent";
global.__objectNames[12] = "obj_enemy_footman";
global.__objectNames[13] = "obj_enemy_archer";
global.__objectNames[14] = "obj_arrow";
global.__objectNames[15] = "obj_wall";
global.__objectNames[16] = "obj_tree";
global.__objectNames[17] = "obj_water";
global.__objectNames[18] = "obj_dirt";
global.__objectNames[19] = "obj_invisible_wall";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for