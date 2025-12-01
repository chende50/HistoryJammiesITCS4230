instance_destroy(other)
global.enemiesRemaining --

if global.enemiesRemaining <= 0 and global.cannonballsPlayed
{
	with obj_cannonballsController
	{
		game_over = false
		instance_create_layer(960, 540, "Instances", obj_win)
		alarm[0] = 120
	}
	obj_cannon.active = false
	obj_crosshair.active = false
}


instance_destroy()