//sets number of bullets
bulletSpiralCount =  1000;

//index of bullets
bulletSpiralIterator = 0;

//bullets per second
bulletSpiralInterval = room_speed / 8;

//sets bullet speed
bulletSpiralSpeed = 4;

//sets enemy hp
hp = 20;

if (alarm[0] == -1) {
	alarm[0] = room_speed * 1;
}

//gets instance id
layer_id = layer_get_id("mechanics");
