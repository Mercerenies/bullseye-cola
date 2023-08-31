
// Sprite Animations
sprite_index = directionToPlayerSprite(facing_direction);
if (is_player_idle()) {
  animating = false;
}
if (animating) {
  image_index = floor(tick / 8);
} else {
  image_index = 0;
}

draw_self();