if correct
{
	with obj_vasesController
	{
		scr_vaseRandomize(options)
	}
	numCorrect++
	if numCorrect >= 3
	{
		room_goto(rm_transition)
	}
}
else
{
	with obj_vasesController
	{
		game_over = true
		instance_create_layer(960, 540, "Instances", obj_lose)
		alarm[2] = 120
	}
}