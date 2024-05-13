move_towards_point(obj_ship.x, obj_ship.y, 0);

if (place_meeting(x, y, obj_userBullet)) {
	hp -= 1;
	if (hp <= 0) {
		instance_destroy();
	}
	
	with instance_place(x, y, obj_userBullet) {
		instance_destroy();
	}
}