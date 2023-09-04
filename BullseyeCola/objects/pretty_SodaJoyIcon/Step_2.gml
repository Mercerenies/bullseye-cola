phase++;
phase = phase mod angle_period;
image_angle = dsin(360 * phase / angle_period) * angle_variation;

if (y < -64)
    instance_destroy();
