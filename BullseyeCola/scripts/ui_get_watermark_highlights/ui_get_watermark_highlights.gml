
function ui_get_watermark_highlights() {
  // If we're dragging something, get its description. Else,
  // check what the mouse is over.
  with (ui_UISodaCan) {
    if (dragging) {
      return soda_get_highlights(soda_number);
    }
  }
  var soda_at_mouse = instance_position(mouse_x, mouse_y, ui_UISodaCan);
  if (instance_exists(soda_at_mouse)) {
    return soda_get_highlights(soda_at_mouse.soda_number);
  }
  return [];
}