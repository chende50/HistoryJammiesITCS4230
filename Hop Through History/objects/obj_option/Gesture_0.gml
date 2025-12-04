if correct
{
	global.numCorrect++
	if global.numCorrect >= 3
	{
		with obj_option
		{
			//Blue
			var _pemit1 = part_emitter_create(_ps);
			part_emitter_region(_ps, _pemit1, -32, 32, -32, 32, ps_shape_rectangle, ps_distr_linear);
			part_emitter_stream(_ps, _pemit1, _ptype1, 1);
			part_emitter_interval(_ps, _pemit1, .2, .5, time_source_units_seconds);

			//Red
			var _pemit2 = part_emitter_create(_ps);
			part_emitter_region(_ps, _pemit2, -32, 32, -32, 32, ps_shape_rectangle, ps_distr_linear);
			part_emitter_stream(_ps, _pemit2, _ptype2, 1);
			part_emitter_interval(_ps, _pemit2, .2, .5, time_source_units_seconds);
		
			//Yellow
			var _pemit3 = part_emitter_create(_ps);
			part_emitter_region(_ps, _pemit3, -32, 32, -32, 32, ps_shape_rectangle, ps_distr_linear);
			part_emitter_stream(_ps, _pemit3, _ptype3, 1);
			part_emitter_interval(_ps, _pemit3, .2, .5, time_source_units_seconds);
		}
		if global.vasesPlayed
		{
			with obj_vasesController
			{
				game_over = false
				instance_create_layer(960, 540, "Instances", obj_win)
				alarm[0] = 120
			}
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
	with obj_option
	{
		part_system_destroy(_ps)
	}
	if global.vasesPlayed
	{
		with obj_vasesController
		{
			game_over = true
			instance_create_layer(960, 540, "loseObjs", obj_lose)
			instance_create_layer(960, 240, "loseObjs", obj_loseText)
			global.winStreak = 0
			alarm[2] = 120
		}
	} else {
		instance_create_layer(x, y, "loseObjs", obj_wrong)
	}
}