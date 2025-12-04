//pr_stars
_ps = part_system_create_layer("particles", false, pr_stars);
part_system_draw_order(_ps, true);

//Blue
_ptype1 = part_type_create();
part_type_shape(_ptype1, pt_shape_star);
part_type_size(_ptype1, 0.5, 1.5, 0, 0.1);
part_type_scale(_ptype1, 1, 1);
part_type_speed(_ptype1, 15, 30, 0, 0.1);
part_type_direction(_ptype1, 60, 120, 0, 0.1);
part_type_gravity(_ptype1, 0.4, 270);
part_type_orientation(_ptype1, 0, 360, 1, 1, false);
part_type_colour3(_ptype1, $FF0000, $FF0000, $FF0000);
part_type_alpha3(_ptype1, 1, 1, 1);
part_type_blend(_ptype1, false);
part_type_life(_ptype1, 80, 160);

//Red
_ptype2 = part_type_create();
part_type_shape(_ptype2, pt_shape_star);
part_type_size(_ptype2, 0.5, 1.5, 0, 0.1);
part_type_scale(_ptype2, 1, 1);
part_type_speed(_ptype2, 15, 30, 0, 0.1);
part_type_direction(_ptype2, 60, 120, 0, 0.1);
part_type_gravity(_ptype2, 0.4, 270);
part_type_orientation(_ptype2, 0, 360, 1, 1, false);
part_type_colour3(_ptype2, $0000FF, $0000FF, $0000FF);
part_type_alpha3(_ptype2, 1, 1, 1);
part_type_blend(_ptype2, false);
part_type_life(_ptype2, 80, 160);

//Yellow
_ptype3 = part_type_create();
part_type_shape(_ptype3, pt_shape_star);
part_type_size(_ptype3, 0.5, 1.5, 0, 0.1);
part_type_scale(_ptype3, 1, 1);
part_type_speed(_ptype3, 15, 30, 0, 0.1);
part_type_direction(_ptype3, 60, 120, 0, 0.1);
part_type_gravity(_ptype3, 0.4, 270);
part_type_orientation(_ptype3, 0, 360, 1, 1, false);
part_type_colour3(_ptype3, $00FFFF, $00FFFF, $00FFFF);
part_type_alpha3(_ptype3, 1, 1, 1);
part_type_blend(_ptype3, false);
part_type_life(_ptype3, 80, 160);

part_system_position(_ps, x, 1000);
