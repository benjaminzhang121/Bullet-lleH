//movement using arrow keys
var mleft = keyboard_check(vk_left);
var mright = keyboard_check(vk_right);
var mup = keyboard_check(vk_up);
var mdown = keyboard_check(vk_down);
var h_speed = mright - mleft;
var v_speed = mdown - mup;

//sets speed and direction
if (h_speed != 0 || v_speed != 0) {
	var spd = 5;
	var dir = point_direction(0, 0, h_speed, v_speed);
	var xgain = lengthdir_x(spd, dir);
	var ygain = lengthdir_y(spd, dir);
	x = x + xgain;
	y = y + ygain;
	
	if (mright == true) {
		sprite_index = s_game_ship_right;
	}
	
	if (mleft == true) {
		sprite_index = s_game_ship_left;
	}
}

else {
	sprite_index = s_game_ship;
}

//prevents user from leaving screen
//prevents user from leaving the screen
x = clamp(x, 0 + (sprite_width / 2), room_width - (sprite_width / 2));
y = clamp(y, 0 + (sprite_height / 2), room_height - (sprite_height / 2));

//checks for collision with bullet and enemies
//if collision, destroy ship and go to death screen
if (place_meeting(x, y, obj_bullet)) {
	instance_destroy(obj_ship);
	audio_stop_all();
	audio_play_sound(s_game_death_sound, 1, false);
	room_goto(s_death);
}

if (place_meeting(x, y, obj_bullet2)) {
	instance_destroy(obj_ship);
	audio_stop_all();
	audio_play_sound(s_game_death_sound, 1, false);
	room_goto(s_death);
}

if (place_meeting(x, y, obj_bullet3)) {
	instance_destroy(obj_ship);
	audio_stop_all();
	audio_play_sound(s_game_death_sound, 1, false);
	room_goto(s_death);
}

if (place_meeting(x, y, obj_bullet4)) {
	instance_destroy(obj_ship);
	audio_stop_all();
	audio_play_sound(s_game_death_sound, 1, false);
	room_goto(s_death);
}

if (place_meeting(x, y, obj_bullet5)) {
	instance_destroy(obj_ship);
	audio_stop_all();
	audio_play_sound(s_game_death_sound, 1, false);
	room_goto(s_death);
}

if (place_meeting(x, y, obj_bullet_default)) {
	instance_destroy(obj_ship);
	audio_stop_all();
	audio_play_sound(s_game_death_sound, 1, false);
	room_goto(s_death);
}

if (place_meeting(x, y, obj_enemy_default)) {
	instance_destroy(obj_ship);
	audio_stop_all();
	audio_play_sound(s_game_death_sound, 1, false);
	room_goto(s_death);
}

if (place_meeting(x, y, obj_enemy1)) {
	instance_destroy(obj_ship);
	audio_stop_all();
	audio_play_sound(s_game_death_sound, 1, false);
	room_goto(s_death);
}

if (place_meeting(x, y, obj_enemy2)) {
	instance_destroy(obj_ship);
	audio_stop_all();
	audio_play_sound(s_game_death_sound, 1, false);
	room_goto(s_death);
}

if (place_meeting(x, y, obj_enemy3)) {
	instance_destroy(obj_ship);
	audio_stop_all();
	audio_play_sound(s_game_death_sound, 1, false);
	room_goto(s_death);
}

if (place_meeting(x, y, obj_enemy5)) {
	instance_destroy(obj_ship);
	audio_stop_all();
	audio_play_sound(s_game_death_sound, 1, false);
	room_goto(s_death);
}

//shoots bullets when pressing space bar
if (shotCD <= 0) {
	if (keyboard_check(vk_space)) {
		var bullet = instance_create_layer(x, y, layer_id, obj_userBullet);
	
		bullet.speed = 8;
		bullet.direction = 90;
		bullet.image_angle = direction;
		
		shotCD = (0.2 * room_speed);
	}
}
	
shotCD -= 1;