/// @description Check for directional inputs

if (is_player_idle()) {
  var dir = input_get_direction();
  if (!is_undefined(dir)) {
    if (input_shift_modifier()) {
      push_action(new PlayerRotateAction(dir));
    } else {
      try_move_player(dir);
    }
  }
}
