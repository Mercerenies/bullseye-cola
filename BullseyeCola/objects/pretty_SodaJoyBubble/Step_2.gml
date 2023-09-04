wiggle_phase++;
wiggle_phase = wiggle_phase mod wiggle_period;
x = xstart + wiggle_room * dsin(360 * wiggle_phase / wiggle_period);

if (!is_disappearing) {
    draw_scale = approach(draw_scale, 1, 0.2);
} else {
    draw_scale += 0.05;
    image_alpha = approach(image_alpha, 0, 0.04);
}

if (image_alpha <= 0)
    instance_destroy();
