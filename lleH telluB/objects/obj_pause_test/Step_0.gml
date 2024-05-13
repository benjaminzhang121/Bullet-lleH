//checks for pause
if (room == s_game) {
	if (keyboard_check_pressed(vk_escape)) {
		pause = !pause;
		if (pause = !pause) {
			instance_activate_all();
			surface_free(pause_id);
			pause_id = -1;
			audio_pause_all();
		}
	}
	
	if (pause == true) {
		alarm[0]++;
		alarm[1]++;
	}
}