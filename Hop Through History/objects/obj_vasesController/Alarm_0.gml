with obj_option
{
	part_system_destroy(_ps)
}

if global.vasesPlayed
{
	if !game_over
	{
		global.winStreak++
		played = true
		global.vasesTime -= 66
		global.vasesTime = clamp(global.vasesTime, 200, 600)
		score += 100 * global.multiplier
		room_goto(rm_transition)
	}
} else {
	global.vasesPlayed = true
	instance_create_layer(room_width/2, room_height/2, "loseObjs", obj_tutorialEnd)
}