//pr_stars
_ps = part_system_create();
part_system_draw_order(_ps, true);

//Emitter
_ptype1 = part_type_create();
part_type_shape(_ptype1, pt_shape_star);
part_type_size(_ptype1, 0.5, 1.5, 0, 0.1);
part_type_scale(_ptype1, 1, 1);
part_type_speed(_ptype1, 15, 30, 0, 0.1);
part_type_direction(_ptype1, 80, 100, 0, 0.1);
part_type_gravity(_ptype1, 0.1, 270);
part_type_orientation(_ptype1, 0, 360, 1, 1, false);
part_type_colour3(_ptype1, $FFFFFF, $56F3FF, $00EEFF);
part_type_alpha3(_ptype1, 1, 1, 1);
part_type_blend(_ptype1, false);
part_type_life(_ptype1, 80, 160);