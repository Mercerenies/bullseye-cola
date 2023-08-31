
function try_move_player(dir) {
  var src_x = obj_Player.x;
  var src_y = obj_Player.y;
  var dest_x = src_x + lengthdir_x(GRID_SIZE, dir * 90);
  var dest_y = src_y + lengthdir_y(GRID_SIZE, dir * 90);
  if (can_move_to(dest_x, dest_y)) {
    push_action(new PlayerMoveAction(src_x, src_y, dest_x, dest_y, dir));
  } else {
    push_action(new PlayerRotateAction(dir));
  }
}

function can_move_to(dest_x, dest_y) {
  if (!position_meeting(dest_x, dest_y, par_FloorTile)) {
    return false;
  }
  return true;
}
