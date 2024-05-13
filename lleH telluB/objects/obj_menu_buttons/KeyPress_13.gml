//starts game, ends game, or goes to instructions screen

switch(menu_index) {
	//starts game will end menu music, go to game room, and play game music
	case 0:
		audio_sound_gain(s_menu_bgm, 0, 1500);
		room_goto(s_game);
		if (!audio_is_playing(s_game_bgm)){
			audio_sound_gain(s_game_bgm, 0, 0);
			audio_sound_gain(s_game_bgm, .5, 3000);
			audio_play_sound(s_game_bgm, 1000, false);
		}
		break;
		
	//goes to options screen
	case 1:
		room_goto(s_options);
		break;
	//exit game exits game
	case 2:
		game_end();
		break;
}