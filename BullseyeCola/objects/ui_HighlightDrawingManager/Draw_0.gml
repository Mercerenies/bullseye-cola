
if ((!is_player_idle()) || (!is_player_alive())) {
  exit;
}

var img_index = floor(tick / 10);
var highlights = ui_get_watermark_highlights();
for (var i = 0; i < array_length(highlights); i += 2) {
  var xx = highlights[i];
  var yy = highlights[i + 1];
  draw_sprite(spr_FloorTileHighlight, img_index, xx, yy);
}