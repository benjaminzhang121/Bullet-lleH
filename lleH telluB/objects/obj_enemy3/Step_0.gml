//randomly moves object
if (instance_exists(obj_ship)) {
	move_towards_point(irandom_range(0, room_width), y, bulletSpiralSpeed);
}

if (place_meeting(x, y, obj_userBullet)) {
	hp -= 1;
	if (hp <= 0) {
		instance_destroy();
		global.player_score += 10000;
	}
	
	with instance_place(x, y, obj_userBullet) {
		instance_destroy();
	}
}