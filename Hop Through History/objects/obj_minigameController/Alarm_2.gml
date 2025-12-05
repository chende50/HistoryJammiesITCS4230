//Alarm to send player to transition screen after losing a game
global.portals--

if global.portals <= 0
{
	if score > global.highscore
	{
		global.highscore = score
		room_goto(rm_highscoreScreen)
	} else {
		room_goto(rm_loseScreen)
	}
}
else
{
	room_goto(rm_transition)
}