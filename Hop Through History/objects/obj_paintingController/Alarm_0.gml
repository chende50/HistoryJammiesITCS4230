//Timer for game length
if global.paintingPlayed {
	if !game_over
	{
		global.winStreak++
		score += 100 * global.multiplier
		global.zoneSize -= .1
		global.zoneSize = clamp(global.zoneSize, .2, .8)
		room_goto(rm_transition)
	}	
} else {
	global.paintingPlayed = true
	instance_create_layer(room_width/2, room_height/2, "loseObjs", obj_tutorialEnd)
}
