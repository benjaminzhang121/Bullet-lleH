//changes room on button press
switch(menu_index) {
	//goes to enemy info screen
	case 0:
		room_goto(s_enemies);
		break;
		
	//goes to menu screen
	case 1:
		room_goto(s_menu);
		break;
}