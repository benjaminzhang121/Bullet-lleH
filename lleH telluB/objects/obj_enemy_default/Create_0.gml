//sets number of bullets
bulletSpiralCount =  2000;

//index of bullets
bulletSpiralIterator = 0;

//bullets per second
bulletSpiralInterval = room_speed / 8;

//sets bullet speed
bulletSpiralSpeed = 4;

if (alarm[0] == -1) {
	alarm[0] = room_speed * 1;
}

hp = 40;

//gets instance id
layer_id = layer_get_id("mechanics");
