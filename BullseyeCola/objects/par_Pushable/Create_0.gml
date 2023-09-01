
event_inherited();

can_move_onto = function(move_dir) {
  var target_x = x + lengthdir_x(GRID_SIZE, move_dir * 90);
  var target_y = y + lengthdir_y(GRID_SIZE, move_dir * 90);
  // Can only push things with strength = 1. That is, you can't
  // push ten barrels in a row at a time.
  return !position_meeting(target_x, target_y, par_Solid);
}

on_move_onto = function(move_dir) {
  return get_object_push_action(self, move_dir);
}