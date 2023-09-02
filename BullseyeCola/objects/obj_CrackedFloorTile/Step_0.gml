
event_inherited();

if (cracking > 0) {
  cracking -= 1;
  part_emitter_burst(cracked_particle_system, cracked_particle_emitter, ctrl_Particles.cracked_block, 3);
}