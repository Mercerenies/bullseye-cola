/// @description Respond to player input

// Room restart always works, even if the player is in motion. That
// way, if I do something boneheaded and end up putting a softlock in
// the game, there's still an escape.
if (input_restart()) {
  room_restart();
  exit;
}

if (is_player_idle()) {
  if (input_undo()) {
    undo_stack_undo();
  } else {
    var dir = input_get_direction();
    if (!is_undefined(dir)) {
      if (input_shift_modifier()) {
        undo_stack_apply_change(new PlayerRotateChange(obj_Player.facing_direction, dir));
      } else {
        try_move_player(dir);
      }
    }
  }
}
