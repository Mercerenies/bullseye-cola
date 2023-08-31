/// @description Check for directional inputs

if (is_player_idle()) {
  if (input_down()) {
    try_move_player(Direction.DOWN);
  } else if (input_left()) {
    try_move_player(Direction.LEFT);
  } else if (input_up()) {
    try_move_player(Direction.UP);
  } else if (input_right()) {
    try_move_player(Direction.RIGHT);
  }
}