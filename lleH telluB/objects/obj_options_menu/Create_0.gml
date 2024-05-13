//formats menu buttons
menu_x = room_width / 2;
menu_y = room_height / 2 + (room_height * .25);
button_h = 60;

//creates button
button[0] = "Enemies";
button[1] = "Back"
buttons = array_length_1d(button);

//keeps track of menu button
menu_index = 0;
last_selected = 0;

//adds in font
game_font = font_add("PressStart2P-Regular.ttf", 24, false, false, 32, 128);