if room == rm_dino
{
	with obj_meteor
	{
		instance_destroy()
	}
} else if room == rm_cannonballs {
	with obj_projectile
	{
		instance_destroy()
	}
}

room_goto(rm_transition)