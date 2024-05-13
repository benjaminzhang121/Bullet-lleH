//spawns enemy type 1 after certain amount of time has passed
repeat(enemy_num) {
	instance_create_layer(irandom_range(50, room_width), room_height / 4, layer_id, obj_enemy5);
	alarm[0] = gen_int;
}