if global.enemiesRemaining > 0
{ 
	game_over = true
	instance_create_layer(960, 540, "Instances", obj_lose)
	alarm[2] = 120
}

if !game_over
{
	played = true
	global.cannonballsTime -= 60
	global.cannonballsTime = clamp(global.cannonballsTime, 300, 600)
	score += 100
	room_goto(rm_transition)
}