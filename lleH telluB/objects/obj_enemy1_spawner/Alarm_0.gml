//spawns enemy type 1 after certain amount of time has passed
repeat(enemy_num) {
	instance_create_layer(room_width / 2, room_height / 3, layer_id, obj_enemy1);
	alarm[0] = gen_int;
	
	if (enemy_num <= 3) {
		enemy_num++;
	}
	else {
		enemy_num = 1;
	}
}