is_disappearing = false;

image_xscale = random_range(0.2, 0.4);
image_yscale = image_xscale;
image_alpha = 0.15;
draw_scale = 0;

vspeed = -4 * image_xscale;
wiggle_room = 20 * image_xscale;
wiggle_period = 60;
wiggle_phase = irandom(59);

alarm[0] = irandom_range(120, 180);
