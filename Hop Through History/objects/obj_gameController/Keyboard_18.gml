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
if keyboard_check(ord("L"))
{
	room_goto(rm_loseScreen)
}

if keyboard_check(ord("S"))
{
	score += 100
}
if keyboard_check(ord("M"))
{
	global.multiplier++
}
if keyboard_check(ord("W"))
{
	global.winStreak++
}
if keyboard_check(ord("K"))
{
	global.portals++
}