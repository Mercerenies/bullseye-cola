
event_inherited();

tick += 1;

// Set image angle
var normalized_tick = (tick % anim_period) / anim_period;
if (normalized_tick < 0.8) {
  image_angle = 0;
} else {
  var a = (normalized_tick - 0.8) * (1 / 0.2) * 2 * pi;
  image_angle = animation_orientation * 15 * sin(a);
}