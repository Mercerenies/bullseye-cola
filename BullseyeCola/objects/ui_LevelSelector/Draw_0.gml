
draw_self();

draw_set_font(fnt_HelperWatermark);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x, y, string(level_number));

draw_set_valign(fa_top);
draw_set_halign(fa_left);
