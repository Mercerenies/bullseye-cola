
function try_move_player(dir) {
  var src_x = obj_Player.x;
  var src_y = obj_Player.y;
  var dest_x = src_x + lengthdir_x(GRID_SIZE, dir * 90);
  var dest_y = src_y + lengthdir_y(GRID_SIZE, dir * 90);
  var sprite = directionToPlayerSprite(dir);
  push_action(new PlayerMoveAction(src_x, src_y, dest_x, dest_y, sprite));
}