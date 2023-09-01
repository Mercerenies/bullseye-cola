
var xx = x + GRID_SIZE / 2;
var yy = y + GRID_SIZE / 2;
draw_sprite_ext(spr_SodaCan, 0, xx, yy, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

var soda_offset = 14;
var soda_x = xx - soda_offset * dsin(image_angle);
var soda_y = yy - soda_offset * dcos(image_angle);
draw_sprite_ext(spr_SodaIcons, soda_number, soda_x, soda_y, image_xscale * 0.75, image_yscale * 0.75, image_angle, image_blend, image_alpha);