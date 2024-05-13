//creates bullet and gives it speed
for (var i = 0; i < 5; i++) {
if (bulletSpiralIterator < bulletSpiralCount) {
	var _inst = instance_create_layer(x, y, layer_id, obj_bullet2);
	_inst.direction = irandom_range(210, 330);
	_inst.speed = bulletSpiralSpeed;
	
	//prepares next bullet
	alarm[0] = bulletSpiralInterval;
	bulletSpiralIterator++;
}
else {
	instance_destroy(obj_enemy2);
}
}
