
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);
draw_sprite_ext(spr_UISodaCanOver, 0, x, y, image_xscale, image_yscale, 0, image_blend, 0.3);

draw_set_font(fnt_HelperWatermark);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x, y, string(level_number));

draw_set_valign(fa_top);
draw_set_halign(fa_left);
