if(keyboard_check(ord("D"))){
	room_goto(rm_dino)	
}


if(keyboard_check(ord("C"))){
	room_goto(rm_cannonballs)	
}


if(keyboard_check(ord("P"))){
	room_goto(rm_painting)	
}


if(keyboard_check(ord("V"))){
	room_goto(rm_vases)	
}


if(keyboard_check(ord("R"))){
	game_restart()
}

if keyboard_check(ord("H"))
{
	room_goto(rm_highscoreScreen)
}