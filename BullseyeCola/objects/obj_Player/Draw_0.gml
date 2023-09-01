
event_inherited();

// Sprite Animations
sprite_index = direction_to_player_sprite(facing_direction);
if (hopping) {
  sprite_index = direction_to_player_jump_sprite(facing_direction);
}
if (is_player_idle()) {
  animating = false;
}
if (animating) {
  image_index = floor(tick / 8);
} else {
  image_index = 0;
}

draw_self();
