with obj_dinoController
{
	game_over = true
	instance_create_layer(960, 540, "loseObjs", obj_lose)
	instance_create_layer(960, 240, "loseObjs", obj_loseText)
	alarm[2] = 120
}

instance_destroy(obj_dinosaur)