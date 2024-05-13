//sets number of bullets
bulletSpiralCount = 1000;

//index of bullets
bulletSpiralIterator = 0;

//bullets per second
bulletSpiralInterval = room_speed / 10;

//sets bullet speed
bulletSpiralSpeed = 4;

if (alarm[0] == -1) {
	alarm[0] = room_speed * 1;
}

hp = 5;

//gets instance id
layer_id = layer_get_id("mechanics");

//intializes variables for object to move randomly