
var text = ui_get_watermark_text();
if (!is_undefined(text)) {
  draw_set_font(fnt_HelperWatermark);
  draw_set_color(c_black);
  draw_text_ext(x, y, text, -1, sprite_width);
} else {
  draw_self();
}