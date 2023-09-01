/// @description Stop dragging

if (dragging) {
  if (x < UI_LEFT_THRESHOLD) {
    // Apply soda effect (TODO)
  } else {
    var overlapping_soda = instance_place(x, y, ui_UISodaCan);
    if (instance_exists(overlapping_soda)) {
      // Mix the sodas. (TODO Undo)
      var new_soda_number = mix_sodas(overlapping_soda.soda_number, soda_number);
      overlapping_soda.soda_number = new_soda_number;
      instance_destroy();
    } else {
      x = clamp(x, UI_LEFT_THRESHOLD, UI_RIGHT_THRESHOLD);
      y = clamp(y, UI_TOP_THRESHOLD, UI_BOTTOM_THRESHOLD);
    }
  }
}

dragging = false;