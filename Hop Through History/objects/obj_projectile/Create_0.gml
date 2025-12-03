move_towards_point(obj_crosshair.x, obj_crosshair.y, 15)
directionToCannon = point_direction(x, y, obj_cannon.x, obj_cannon.y)

//Particles
//pr_fire
_ps = part_system_create();
part_system_draw_order(_ps, true);

//Emitter
_ptype1 = part_type_create();
part_type_shape(_ptype1, pt_shape_cloud);
part_type_size(_ptype1, 1, 1, 0, 0);
part_type_scale(_ptype1, 1, 1);
part_type_speed(_ptype1, 5, 5, 0, 0);
part_type_direction(_ptype1, 270, 270, 0, 0);
part_type_gravity(_ptype1, 0, 270);
part_type_orientation(_ptype1, 0, 0, 0, 0, false);
part_type_colour3(_ptype1, $0F7FFF, $999999, $1A1A1A);
part_type_alpha3(_ptype1, 1, 1, 1);
part_type_blend(_ptype1, false);
part_type_life(_ptype1, 50, 100);

var _pemit1 = part_emitter_create(_ps);
part_emitter_region(_ps, _pemit1, -32, 32, -32, 32, ps_shape_rectangle, ps_distr_linear);
part_emitter_stream(_ps, _pemit1, _ptype1, 1);

part_system_position(_ps, 0, 0);