//creates bullet and gives it speed
for (var i = 0; i < 10; i++) {
	if (bulletSpiralIterator < bulletSpiralCount) {
			var _inst = instance_create_layer(x, y, layer_id, obj_bullet);
			_inst.direction = 1 - (360 / 32) * bulletSpiralIterator;
			_inst.speed = bulletSpiralSpeed;
		//prepares next bullet
		alarm[0] = bulletSpiralInterval;
		bulletSpiralIterator++;
	}
	else {
		instance_destroy(obj_enemy1);
	}
}