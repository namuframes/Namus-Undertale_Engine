if (part_particles_count(part_system) < room_width && espalhar)
{
	part_emitter_stream(part_system, part_emitter, part_type, room_width/4);
	part_emitter_region(part_system, part_emitter, -200, room_width+50, room_height, 0, pt_shape_square, ps_distr_linear);
} else {
	espalhar = false;
	part_emitter_stream(part_system, part_emitter, part_type, 1);
	part_emitter_region(part_system, part_emitter, -50, room_width+50, 0, 0, pt_shape_square, ps_distr_linear);
}
