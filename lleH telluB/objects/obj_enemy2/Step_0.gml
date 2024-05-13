if (place_meeting(x, y, obj_userBullet)) {
		instance_destroy();
		global.player_score += 1000;
		
		with instance_place(x, y, obj_userBullet) {
		instance_destroy();
		}
}