
event_inherited();

on_explode = function() {
  // Destroy
  destroy(self);
}

sprite_index = spr_PlayerDown;
image_index = 0;
image_speed = 0;
facing_direction = Direction.DOWN;
animating = false;
hopping = false;

tick = 0;
