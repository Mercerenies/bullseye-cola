
function soda_generate_highlights(relative_dir, sprite, spacing, count) {
  var highlights = [];
  highlights[count * 3 - 1] = 0; // Pre-allocate array
  var i = 0;
  var xx = obj_Player.x;
  var yy = obj_Player.y;
  var dx = spacing * direction_x(obj_Player.facing_direction + relative_dir);
  var dy = spacing * direction_y(obj_Player.facing_direction + relative_dir);
  for (var j = 0; j < count; j++) {
    xx += dx;
    yy += dy;
    highlights[i++] = xx;
    highlights[i++] = yy;
    highlights[i++] = sprite;
  }
  return highlights;
}
