instance_destroy(other)
global.enemiesRemaining --

if global.enemiesRemaining <= 0 and global.cannonballsPlayed
{
	with obj_cannon
	{
		var _pemit1 = part_emitter_create(_ps);
		part_emitter_region(_ps, _pemit1, -32, 32, -32, 32, ps_shape_rectangle, ps_distr_linear);
		part_emitter_stream(_ps, _pemit1, _ptype1, 2);
		part_emitter_interval(_ps, _pemit1, 0, 0.1, time_source_units_seconds);

		part_system_position(_ps, x, 1000);
	}
	
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