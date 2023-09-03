
tick += 0.01;
image_index = floor(tick / 3);
var a = clamp(1.5 - abs((tick % 3) - 1.5), 0, 1);
image_alpha = a;
if ((tick >= 9) || (input_get_mouse_released())) {
  if (load_game() > 0) {
    room_goto(rm_LevelSelect);
  } else {
    room_goto(rm_Level1);
  }
}
