//goes to ending screen if song is over
if (!audio_is_playing(s_game_bgm)) {
	audio_stop_all();
	audio_play_sound(s_ending_victory, 1, false);
	room_goto(s_ending);
}