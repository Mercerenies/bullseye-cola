
// Safeguard
if (dia_index >= array_length(dia)) {
  exit;
}

draw_self();

draw_set_alpha(image_alpha);

draw_set_color(c_white);
draw_sprite(dia[dia_index].sprite, dia[dia_index].image, bbox_left + 96, bbox_top + 96);

draw_set_color(c_black);
draw_set_font(fnt_DialogueText);
draw_text_ext(bbox_left + 200, bbox_top + 32, display_text, -1, sprite_width - 230);

draw_set_alpha(1);
