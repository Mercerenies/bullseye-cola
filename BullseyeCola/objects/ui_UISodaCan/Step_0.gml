/// @description Update drag position
if (dragging) {
  x = mouse_x - drag_x;
  y = mouse_y - drag_y;
  x = clamp(x, 32, UI_RIGHT_THRESHOLD);
  y = clamp(y, UI_TOP_THRESHOLD, UI_BOTTOM_THRESHOLD);
}