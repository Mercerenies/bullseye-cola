
var scale = 1.0;
if (position_meeting(mouse_x, mouse_y, self)) {
  scale = 1.2;
}
image_xscale = approach(image_xscale, scale, 0.04);
image_yscale = approach(image_yscale, scale, 0.04);