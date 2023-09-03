
// Safeguard; `done` should normally be set to true on input_get_mouse_released()
// below. If, for some reason, this object spawns with an empty dialogue
// list, this check ensures that the game doesn't crash.
if (dia_index >= array_length(dia)) {
  done = true;
}

if (first_step) {
  first_step = false;
  if (dia_index < array_length(dia)) {
    dia[dia_index].on_trigger();
  }
}

if (done) {
  image_alpha = approach(image_alpha, 0, 0.1);
  if (image_alpha <= 0) {
    // TODO Go to main menu
    game_end();
  }
  exit;
}

image_alpha = approach(image_alpha, 1, 0.1);
var target_text = dia[dia_index].text;
display_text = string_copy(target_text, 1, string_length(display_text) + 1);

if (input_get_mouse_released()) {
  if (display_text != target_text) {
    display_text = target_text;
  } else if (dia_index == array_length(dia) - 1) {
    done = true;
  } else {
    display_text = "";
    dia_index++;
    if (dia_index < array_length(dia)) {
      dia[dia_index].on_trigger();
    }
  }
}
