audio_play_sound(sd_fireball, 1, false)

if global.dinoPlayed{
	
	with obj_dinoController
	{
		game_over = true
		instance_create_layer(960, 540, "loseObjs", obj_lose)
		instance_create_layer(960, 240, "loseObjs", obj_loseText)
		audio_play_sound(sd_portalBreak, 1, false)
		global.winStreak = 0
		alarm[2] = 120
	} 


	} else {
		instance_create_layer(x, y, "Instances", obj_deadDinosaur)
}

instance_destroy(obj_dinosaur)