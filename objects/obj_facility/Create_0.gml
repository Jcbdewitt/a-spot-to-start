state = "idle"
selected = false;
buttonDistance = 96;
buttonObject[0] = obj_worker_button;
buttonObject[1] = obj_fighter_button;
buttonCount = array_length_1d(buttonObject);
buttonSectionSize = 360/buttonCount;
buttonX[0] = 0;
buttonY[0] = 0;

for (var i=0; i<buttonCount; i++) {
	buttonX[i] = x+lengthdir_x(buttonDistance, buttonSectionSize * i);
	buttonY[i] = y+lengthdir_y(buttonDistance, buttonSectionSize * i);
	button[i] = instance_create_layer(buttonX[i], buttonY[i],"Buttons", buttonObject[i]);
	instance_deactivate_object(button[i]);
}
