
image_alpha = approach(image_alpha, 0.0, 0.2);
alarm[0] = 1;

if (image_alpha <= 0) {
  instance_destroy();
}