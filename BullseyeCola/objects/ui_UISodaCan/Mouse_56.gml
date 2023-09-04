/// @description Stop dragging

if (dragging) {
  if ((x < UI_LEFT_THRESHOLD)) {
    if (is_player_idle() && is_player_alive()) {
      // Apply soda effect
      undo_stack_begin_move();
      undo_stack_apply_change(new SodaCanDestroyChange(soda_number, last_anchor_x, last_anchor_y));
      set_executing_program(soda_get_program(soda_number));
      instance_destroy();
    } else {
      // Revert
      x = last_anchor_x;
      y = last_anchor_y;
    }
  } else {
    var overlapping_soda = instance_place(x, y, ui_UISodaCan);
    if (instance_exists(overlapping_soda)) {
      if (is_player_idle() && is_player_alive() && !soda_is_subset(soda_number, overlapping_soda.soda_number) && !soda_is_subset(overlapping_soda.soda_number, soda_number)) {
        // Mix the sodas.
        undo_stack_begin_move();
        var old_soda_number = overlapping_soda.soda_number;
        var new_soda_number = mix_sodas(old_soda_number, soda_number);
        overlapping_soda.soda_number = new_soda_number;
        undo_stack_apply_change(new SodaCanDestroyChange(soda_number, last_anchor_x, last_anchor_y));
        undo_stack_apply_change(new SodaCanTransmuteChange(overlapping_soda.x, overlapping_soda.y, old_soda_number, new_soda_number));
        audio_play_sound(snd_Fizz, 10, false);
        instance_destroy();
      } else {
        // Revert
        x = last_anchor_x;
        y = last_anchor_y;
      }
    } else {
      // Drop
      undo_stack_apply_change(new SodaCanMoveChange(last_anchor_x, last_anchor_y, x, y));
    }
  }
}

dragging = false;
