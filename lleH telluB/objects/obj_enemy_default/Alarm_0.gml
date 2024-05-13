//creates bullet and gives it speed
if (bulletSpiralIterator < bulletSpiralCount) {
	var _inst = instance_create_layer(x, y, layer_id, obj_bullet_default);
	_inst.direction = 1 - (360 / 32) * bulletSpiralIterator;
	_inst.speed = bulletSpiralSpeed;
	//prepares next bullet
	alarm[0] = bulletSpiralInterval;
	bulletSpiralIterator++;
}
else {
	instance_destroy(obj_enemy_default);
}