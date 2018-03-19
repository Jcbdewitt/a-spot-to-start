if (global.rocks >= cost) {
	instance_create_layer(x, y, "Player_Fighters", ship);
	global.rocks -= cost;
}

image_index = 0;
image_xscale = 1;
image_yscale = 1;

with (obj_ship_creation_parent) {
	instance_deactivate_object(self);	
	
}
