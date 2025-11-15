//Alarm to send player to transition screen after losing a game
global.portals--
if global.portals <= 0
{
	room_goto(rm_loseScreen)
}
else
{
	room_goto(rm_transition)
}