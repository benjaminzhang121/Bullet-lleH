if (place_meeting(x, y, obj_userBullet)) {
	hp -= 1; //subtracts 1 hp for each bullet hit
	if (hp <= 0) {
		instance_destroy();
		global.player_score += 100000;
	}
	
	with instance_place(x, y, obj_userBullet) {
		instance_destroy();
	}
}