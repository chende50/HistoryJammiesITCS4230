if object_exists(obj_enemy)
{ 
	game_over = true
	instance_create_layer(960, 540, "Instances", obj_lose)
	alarm[2] = 120
}

played = true
score += 100
room_goto(rm_transition)