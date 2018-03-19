selected = false;

if (!position_meeting(mouse_x, mouse_y, obj_ship_creation_parent)) {
	with (obj_ship_creation_parent){
		instance_deactivate_object(self);
	}
}
