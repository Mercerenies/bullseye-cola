
event_inherited();

// Note: In the below two functions, is_special_move is defined as
// follows. A "special" move is a hop or a rush. That is, the player
// is being thrust in a direction and cannot meaningfully stop.
//
// Regular moves include the standard WASD movement as well as the
// unmodified Left and Right Colas.

can_move_onto = function(move_dir, is_special_move) {
  return false;
}

on_move_onto = function(move_dir, is_special_move) {
  return new TrivialAction();
}
