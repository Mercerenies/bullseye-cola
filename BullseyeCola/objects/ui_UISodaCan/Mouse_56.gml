/// @description Stop dragging

if (dragging) {
  if ((x < UI_LEFT_THRESHOLD) && (is_player_idle())) {
    // Apply soda effect (TODO)
  } else {
    var overlapping_soda = instance_place(x, y, ui_UISodaCan);
    if (instance_exists(overlapping_soda) && is_player_idle()) {
      // Mix the sodas.
      undo_stack_begin_move();
      var old_soda_number = overlapping_soda.soda_number;
      var new_soda_number = mix_sodas(old_soda_number, soda_number);
      overlapping_soda.soda_number = new_soda_number;
      undo_stack_apply_change(new SodaCanDestroyChange(soda_number, last_anchor_x, last_anchor_y));
      undo_stack_apply_change(new SodaCanTransmuteChange(overlapping_soda.x, overlapping_soda.y, old_soda_number, new_soda_number));
      instance_destroy();
    } else {
      // Clamp position and drop
      x = clamp(x, UI_LEFT_THRESHOLD, UI_RIGHT_THRESHOLD);
      y = clamp(y, UI_TOP_THRESHOLD, UI_BOTTOM_THRESHOLD);
      undo_stack_apply_change(new SodaCanMoveChange(last_anchor_x, last_anchor_y, x, y));
    }
  }
}

dragging = false;
