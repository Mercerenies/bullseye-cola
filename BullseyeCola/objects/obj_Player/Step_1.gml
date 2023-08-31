
// Sprite Animations
sprite_index = directionToPlayerSprite(facing_direction);
if (is_player_idle()) {
  image_index = 0;
} else {
  image_index = floor(tick / 8);
}