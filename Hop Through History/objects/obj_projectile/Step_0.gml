part_system_position(_ps, x, y)

directionToCannon = point_direction(x, y, obj_cannon.x, obj_cannon.y)
part_type_direction(_ptype1, directionToCannon - 5, directionToCannon + 5, 0, 0);