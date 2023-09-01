
event_inherited();

can_move_onto = function(move_dir, is_special_move) {
  if (is_special_move) {
    return false;
  }
  var target_x = x + direction_x(move_dir);
  var target_y = y + direction_y(move_dir);
  // Can only push things with strength = 1. That is, you can't
  // push ten barrels in a row at a time.
  return !position_meeting(target_x + GRID_SIZE / 2, target_y + GRID_SIZE / 2, par_Solid);
}

on_move_onto = function(move_dir, is_special_move) {
  return get_object_push_action(self, move_dir);
}

is_explosive = false;
is_sliding = false;

fire_particle_system = part_system_create_layer("Instances_UI", false);
fire_particle_emitter = part_emitter_create(fire_particle_system);
part_system_automatic_draw(fire_particle_system, false)