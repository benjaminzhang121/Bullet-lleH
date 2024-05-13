//spawns enemy type 2 after certain amount of time has passed
repeat(enemy_num) {
	instance_create_layer(irandom(room_width - 32), irandom(room_height - 32), layer_id, obj_enemy4);
	alarm[0] = gen_int;
}