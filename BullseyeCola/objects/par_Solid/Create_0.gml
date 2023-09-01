
event_inherited();

can_move_onto = function(move_dir, is_hopping) {
  return false;
}

on_move_onto = function(move_dir, is_hopping) {
  return new TrivialAction();
}
