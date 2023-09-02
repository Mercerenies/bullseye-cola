
// Inherit the parent event
event_inherited();

image_index = 0;
image_speed = 0;

channel = "default";

// true = pressed down
should_be_pressed = function() {
  var obj = instance_position(x + GRID_SIZE / 2, y + GRID_SIZE / 2, par_PhysicalObject);
  if (!instance_exists(obj)) {
    return false;
  }
  if (object_is_ancestor_fixed(obj.object_index, obj_Player) && obj.hopping) {
    return false;
  }
  return true;
}

snap_to_state = function() {
  if (should_be_pressed()) {
    image_index = image_number - 1;
  } else {
    image_index = 0;
  }
}

animate_to_state = function() {
  var anim_speed = 1.0;
  if (should_be_pressed()) {
    image_index = approach(image_index, image_number - 1, anim_speed);
  } else {
    image_index = approach(image_index, 0, anim_speed);
  }
}
