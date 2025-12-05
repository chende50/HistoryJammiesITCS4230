with obj_option
{
	part_system_destroy(_ps)
}

if global.vasesPlayed
{
	if global.numCorrect < 3
	{
		game_over = true
		instance_create_layer(960, 540, "loseObjs", obj_lose)
		instance_create_layer(960, 240, "loseObjs", obj_loseText)
		audio_play_sound(sd_portalBreak, 1, false)
		global.winStreak = 0
		alarm[2] = 120
	}
	else if !game_over
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