//creates bullet and gives it speed
if (bulletSpiralIterator < bulletSpiralCount) {
	var _inst = instance_create_layer(x, y, layer_id, obj_bullet4);
	_inst.direction = direction;
	_inst.speed = bulletSpiralSpeed;
	//prepares next bullet
	alarm[0] = room_speed;
	bulletSpiralIterator++;
}
else {
	instance_destroy(obj_enemy4);
	instance_destroy(obj_bullet4);
}
