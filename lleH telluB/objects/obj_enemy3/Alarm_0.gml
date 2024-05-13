//creates bullet and gives it speed
if (bulletSpiralIterator < bulletSpiralCount) {
	var _inst = instance_create_layer(x, y, layer_id, obj_bullet3);
	_inst.direction = irandom_range(1, 360);
	_inst.speed = bulletSpiralSpeed;

	//prepares next bullet
	alarm[0] = bulletSpiralInterval;
	bulletSpiralIterator++;
}

else {
	instance_destroy(obj_enemy3);
}