//sets number of bullets
bulletSpiralCount =  1;

//index of bullets
bulletSpiralIterator = 0;

//bullets per second
bulletSpiralInterval = room_speed;

//sets bullet speed
bulletSpiralSpeed = 2;

if (alarm[0] == -1) {
	alarm[0] = room_speed * 5;
}

//sets enemy hp
hp = 100;

//gets instance id
layer_id = layer_get_id("mechanics");
