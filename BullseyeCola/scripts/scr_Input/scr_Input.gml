
function input_left() {
  return keyboard_check(vk_left) || keyboard_check(ord("A"));
}

function input_up() {
  return keyboard_check(vk_up) || keyboard_check(ord("W"));
}

function input_down() {
  return keyboard_check(vk_down) || keyboard_check(ord("S"));
}

function input_right() {
  return keyboard_check(vk_right) || keyboard_check(ord("D"));
}

function input_shift_modifier() {
  return keyboard_check(vk_shift);
}

function input_undo() {
  return keyboard_check_pressed(vk_backspace);
}

function input_restart() {
  return keyboard_check_pressed(vk_escape);
}

function input_get_direction() {
  if (input_down()) {
    return Direction.DOWN;
  } else if (input_left()) {
    return Direction.LEFT;
  } else if (input_up()) {
    return Direction.UP;
  } else if (input_right()) {
    return Direction.RIGHT;
  }
  return undefined;
}

function input_get_mouse_released() {
  return mouse_check_button_released(mb_left);
}

function input_get_f1() {
  return keyboard_check_pressed(vk_f1);
}
