
// Inherit the parent event
event_inherited();

image_index = 0;
image_speed = 0;

channel = "default";
up_when_pressed = false;

should_be_down = function() {
  var button_state = false;
  with (obj_PressurePlateTile) {
    if ((channel == other.channel) && should_be_pressed()) {
      button_state = true;
    }
    break;
  }
  return button_state ^ up_when_pressed;
}

snap_to_state = function() {
  if (should_be_down()) {
    image_index = image_number - 1;
    if (y >= 0) {
      y -= 10000;
    }
  } else {
    image_index = 0;
    if (y < 0) {
      y += 10000;
    }
  }
}

animate_to_state = function() {
  var anim_speed = 1.0;
  if (should_be_down()) {
    image_index = approach(image_index, image_number - 1, anim_speed);
    if ((image_index == image_number - 1) && (y >= 0)) {
      y -= 10000;
    }
  } else {
    image_index = approach(image_index, 0, anim_speed);
    if ((image_index < image_number - 1) && (y < 0)) {
      y += 10000;
    }
  }
}
