/// @description Respond to player input

// Room restart always works, even if the player is in motion. That
// way, if I do something boneheaded and end up putting a softlock in
// the game, there's still an escape.
if (input_restart()) {
  global.is_restarting_room = true;
  room_restart();
  exit;
}

if (input_level_select()) {
  global.is_restarting_room = false;
  room_goto(rm_LevelSelect);
  exit;
}

if (is_player_idle()) {
  if (input_get_f1()) {
    with (ui_DialogueBox) {
      dia_index = 0;
      done = false;
      first_step = true;
    }
  } else if (input_undo()) {
    perform_undo();
  } else if (is_player_alive()) {
    var dir = input_get_direction();
    if (!is_undefined(dir)) {
      if (input_shift_modifier()) {
        push_action(new PlayerRotateAction(obj_Player.facing_direction, dir));
      } else {
        try_move_player(dir);
      }
    }
  }
}
