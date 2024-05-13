//draws pause screen
if (pause == true) {
	if (!surface_exists(pause_id)) {
		if (pause_id == -1) {
			instance_deactivate_all(true);
		}
		
		pause_id = surface_create(room_width, room_height);
		surface_set_target(pause_id);
		draw_surface(application_surface, 0, 0);
		surface_reset_target();
	}

	else {
		draw_surface(pause_id, 0, 0);
		draw_set_alpha(.5);
		draw_rectangle_colour(0, 0, room_width, room_height, c_white, c_white, c_white, c_white, false);
		draw_set_alpha(1);
		draw_set_halign(fa_center);
		draw_text_transformed_colour(room_width / 2, room_height / 2, "PAUSED", 2, 2, 0, c_red, c_red,c_red, c_red, 1);
		draw_set_halign(fa_left);
		instance_activate_all();
	}
}