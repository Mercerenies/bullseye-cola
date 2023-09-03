
var player_level = load_game();

for (var i = 0; i < 9; i++) {
  for (var j = 0; j < 4; j++) {
    var index = i + j * 9 + 1;
    if (index > player_level) {
      continue;
    }
    var xx = (i + 1) * room_width / 10;
    var yy = (j + 2) * room_height / 6;
    with (instance_create_layer(xx, yy, "Instances", ui_LevelSelector)) {
      level_number = index;
    }
  }
}

instance_destroy();