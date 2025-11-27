if !game_over
{
	played = true
	global.vasesTime -= 66
	global.vasesTime = clamp(global.vasesTime, 200, 600)
	score += 100
	room_goto(rm_transition)
}