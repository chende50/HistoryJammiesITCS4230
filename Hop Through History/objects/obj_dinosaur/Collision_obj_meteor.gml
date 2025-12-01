if global.dinoPlayed{
	
	with obj_dinoController
	{
		game_over = true
		instance_create_layer(960, 540, "loseObjs", obj_lose)
		instance_create_layer(960, 240, "loseObjs", obj_loseText)
		alarm[2] = 120
	} 


	} else {
		global.dinoPlayed = true
		instance_create_layer(room_width/2, room_height/2, "loseObjs", obj_tutorialEnd)
}

instance_destroy(obj_dinosaur)