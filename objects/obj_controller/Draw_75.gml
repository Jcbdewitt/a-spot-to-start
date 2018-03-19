/// @description  Debugging info
draw_set_color(c_red)


// Frames Per Second
draw_text(32,128,string_hash_to_newline("FPS:" + string(frames)))

// number of units currently selected
draw_text(32,160,string_hash_to_newline("List Size:" + string(ds_list_size(global.group_selected))))

// the ds list that is currently selected
draw_text(32,192,string_hash_to_newline("DS List:" + string(global.group_selected)))

