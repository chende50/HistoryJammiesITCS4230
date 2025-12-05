with obj_projectile
{
	instance_destroy()
}
with obj_cannon
{
	part_system_destroy(_ps)
}

if global.cannonballsPlayed
{
	if global.enemiesRemaining > 0
	{ 
		game_over = true
		instance_create_layer(960, 540, "loseObjs", obj_lose)
		instance_create_layer(960, 240, "loseObjs", obj_loseText)
		audio_play_sound(sd_portalBreak, 1, false)
		global.winStreak = 0
		alarm[2] = 120
	}

	if !game_over
	{
		played = true
		global.cannonballsTime -= 60
		global.cannonballsTime = clamp(global.cannonballsTime, 300, 600)
		global.winStreak++
		score += 100 * global.multiplier
		room_goto(rm_transition)
	}
} else {
	global.cannonballsPlayed = true
	instance_create_layer(room_width/2, room_height/2, "Instances", obj_tutorialEnd)
}