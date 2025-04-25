espalhar = true;
part_system = part_system_create();

part_emitter = part_emitter_create(part_system);

part_type = part_type_create();

part_type_shape(part_type, pt_shape_square);

part_type_blend(part_type,true)
part_type_scale(part_type,0.02,0.02)
part_type_color1(part_type, c_white);
part_type_direction(part_type, -110, -80, 0, 0);
part_type_speed(part_type, 0.5, 0.8, 0, 0);
part_type_life(part_type, room_speed * 10, room_speed * 20);

part_emitter_region(part_system, part_emitter, -50, room_width+50, 0, 0, pt_shape_square, ps_distr_linear);

part_emitter_stream(part_system, part_emitter, part_type, 100);