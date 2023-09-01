
event_inherited();

can_move_onto = function(move_dir) {
  return false;
}

on_move_onto = function(move_dir) {
  return new TrivialAction();
}