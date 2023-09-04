
var player_level = load_game();

for (var i = 0; i < 9; i++) {
  for (var j = 0; j < 4; j++) {
    var index = i + j * 9 + 1;
    if (index > player_level) {
      continue;
    }
    var xx = (i + 1) * room_width / 10;
    var yy = (j + 2) * room_height / 6 + 24;
    with (instance_create_layer(xx, yy, "Instances", ui_LevelSelector)) {
      level_number = index;
      if (level_number > 27) {
        image_blend = c_fuchsia;
      } else if (level_number > 18) {
        image_blend = c_blue;
      } else if (level_number > 9) {
        image_blend = c_lime;
      } else {
        image_blend = c_red;
      }
    }
  }
}

instance_destroy();