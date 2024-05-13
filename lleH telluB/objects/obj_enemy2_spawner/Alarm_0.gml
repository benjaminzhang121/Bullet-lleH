//spawns enemy type 2 after certain amount of time has passed
repeat(enemy_num) {
	instance_create_layer(irandom_range(0 + sprite_width, room_width - sprite_width), irandom(room_height / 2), layer_id, obj_enemy2);
	alarm[0] = gen_int;
	
	if (enemy_num <= 3) {
		enemy_num++;
	}
	else {
		enemy_num = 1;
	}
}