
if (is_player_idle()) {
  facing_direction = normalize_direction_to_cardinal(facing_direction);
}

if (!is_undefined(forced_layer)) {
  depth = forced_layer;
} else {
  // Inherit the parent event
  event_inherited();
}
