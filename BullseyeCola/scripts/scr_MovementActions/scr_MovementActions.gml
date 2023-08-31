
function try_move_player(dir) {
  var src_x = obj_Player.x;
  var src_y = obj_Player.y;
  var dest_x = src_x + lengthdir_x(GRID_SIZE, dir * 90);
  var dest_y = src_y + lengthdir_y(GRID_SIZE, dir * 90);
  if (can_move_to(dest_x, dest_y)) {
    undo_stack_begin_move();
    undo_stack_apply_change(new PlayerMoveChange(src_x, src_y, obj_Player.facing_direction, dest_x, dest_y, dir));
  } else {
    undo_stack_apply_change(new PlayerRotateChange(obj_Player.facing_direction, dir));
  }
}

function can_move_to(dest_x, dest_y) {
  if (!position_meeting(dest_x, dest_y, par_FloorTile)) {
    return false;
  }
  return true;
}
