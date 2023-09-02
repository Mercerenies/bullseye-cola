
// Inherit the parent event
event_inherited();

cracked_particle_system = part_system_create_layer("Instances", false);
cracked_particle_emitter = part_emitter_create(cracked_particle_system);

cracking = 0;

crack = function() {
  part_emitter_region(cracked_particle_system, cracked_particle_emitter, x, x + GRID_SIZE, y, y + GRID_SIZE, ps_shape_rectangle, ps_distr_linear);
  destroy(self);
  cracking = 3;
}