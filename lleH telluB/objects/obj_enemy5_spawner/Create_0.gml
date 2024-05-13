//spawns 1 enemy each time
enemy_num = 1;

gen_int = room_speed * 15;

//delays spawn
if (alarm[0] == -1) {
	alarm[0] = room_speed * 28;
}

//gets instance id
layer_id = layer_get_id("mechanics");