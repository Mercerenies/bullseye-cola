
event_inherited();

if (is_sliding && is_explosive) {
  part_emitter_region(fire_particle_system, fire_particle_emitter, x + 8, x + GRID_SIZE - 8, y + 4, y + GRID_SIZE / 2, ps_shape_rectangle, ps_distr_gaussian);
  part_emitter_burst(fire_particle_system, fire_particle_emitter, ctrl_Particles.player_fire, 30);
}
