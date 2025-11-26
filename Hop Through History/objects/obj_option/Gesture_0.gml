if correct
{
	global.numCorrect++
	if global.numCorrect >= 3
	{
		with obj_vasesController
		{
			game_over = false
			instance_create_layer(960, 540, "Instances", obj_win)
			alarm[0] = 120
		}
	}
	else
	{
		with obj_vasesController
		{
			scr_vaseRandomize(options)
		}
	}
}
else
{
	with obj_vasesController
	{
		game_over = true
		instance_create_layer(960, 540, "loseObjs", obj_lose)
		instance_create_layer(960, 240, "loseObjs", obj_loseText)
		alarm[2] = 120
	}
}