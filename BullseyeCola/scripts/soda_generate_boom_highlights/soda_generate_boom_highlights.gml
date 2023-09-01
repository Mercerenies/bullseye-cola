
function soda_generate_boom_highlights(relative_dir, distance) {
  var count = 8;
  var highlights = [];
  highlights[count * 3 - 1] = 0; // Pre-allocate array
  var i = 0;
  var center_x = obj_Player.x + distance * direction_x(obj_Player.facing_direction + relative_dir);
  var center_y = obj_Player.y + distance * direction_y(obj_Player.facing_direction + relative_dir);
  for (var j = -1; j <= 1; j++) {
    for (var k = -1; k <= 1; k++) {
      if ((j == 0) && (k == 0)) {
        continue;
      }
      highlights[i++] = center_x + j * GRID_SIZE;
      highlights[i++] = center_y + k * GRID_SIZE;
      highlights[i++] = spr_FloorTileBoomHighlight;
    }
  }
  return highlights;
}
