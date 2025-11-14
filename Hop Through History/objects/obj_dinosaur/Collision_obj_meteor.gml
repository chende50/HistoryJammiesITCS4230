with obj_dinoController
{
	game_over = true
	instance_create_layer(960, 540, "Instances", obj_lose)
	alarm[2] = 120
}

instance_destroy(obj_dinosaur)