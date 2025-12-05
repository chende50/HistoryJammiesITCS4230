instance_destroy(other)
global.enemiesRemaining --
audio_play_sound(sd_fireball, 1, false)

if global.enemiesRemaining <= 0
{	
	audio_play_sound(sd_win, 1, false)
	with obj_cannon
	{
		//Blue
		var _pemit1 = part_emitter_create(_ps);
		part_emitter_region(_ps, _pemit1, -32, 32, -32, 32, ps_shape_rectangle, ps_distr_linear);
		part_emitter_stream(_ps, _pemit1, _ptype1, 1);
		part_emitter_interval(_ps, _pemit1, 0, 0.1, time_source_units_seconds);

		//Red
		var _pemit2 = part_emitter_create(_ps);
		part_emitter_region(_ps, _pemit2, -32, 32, -32, 32, ps_shape_rectangle, ps_distr_linear);
		part_emitter_stream(_ps, _pemit2, _ptype2, 1);
		part_emitter_interval(_ps, _pemit2, 0, 0.1, time_source_units_seconds);
		
		//Yellow
		var _pemit3 = part_emitter_create(_ps);
		part_emitter_region(_ps, _pemit3, -32, 32, -32, 32, ps_shape_rectangle, ps_distr_linear);
		part_emitter_stream(_ps, _pemit3, _ptype3, 1);
		part_emitter_interval(_ps, _pemit3, 0, 0.1, time_source_units_seconds);
		
		part_system_position(_ps, x, 1000);
	}
	if global.cannonballsPlayed
	{
		with obj_cannonballsController
		{
			game_over = false
			alarm[0] = 120
		}
		obj_cannon.active = false
		obj_crosshair.active = false
	}
}


instance_destroy()