
if (!is_undefined(forced_layer)) {
  depth = forced_layer;
} else {
  // Inherit the parent event
  event_inherited();
}
