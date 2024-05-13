//sets number of bullets
bulletSpiralCount = 10;

//index of bullets
bulletSpiralIterator = 0;

//bullets per second
bulletSpiralInterval = room_speed / 2;

//sets bullet speed
bulletSpiralSpeed = 3;

//delays bullets from firing
if (alarm[0] == -1) {
	alarm[0] = room_speed * 2;
}

//gets instance id
layer_id = layer_get_id("mechanics");