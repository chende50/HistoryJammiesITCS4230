//Timer for game length
if global.dinoPlayed {
	if !game_over
	{
		global.winStreak++
		score += 100 * global.multiplier
		//Increment difficulty once timer runs out
		global.meteorRate -= 3
		global.meteorSpeed += 1

		//Clamp difficulty variables
		global.meteorRate = clamp(global.meteorRate, 12, 30)
		global.meteroSpeed = clamp(global.meteorSpeed, 2, 8)
		room_goto(rm_transition)
	}	
} else {
	global.dinoPlayed = true
	instance_create_layer(room_width/2, room_height/2, "loseObjs", obj_tutorialEnd)
}
