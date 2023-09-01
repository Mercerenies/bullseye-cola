
function try_move_player(dir) {
  var src_x = obj_Player.x;
  var src_y = obj_Player.y;
  var dest_x = src_x + lengthdir_x(GRID_SIZE, dir * 90);
  var dest_y = src_y + lengthdir_y(GRID_SIZE, dir * 90);
  if (can_move_to(dest_x, dest_y, dir)) {
    undo_stack_begin_move();
    var action = new PlayerMoveAction(src_x, src_y, obj_Player.facing_direction, dest_x, dest_y, dir);
    var overlapping_object = instance_position(dest_x, dest_y, par_Solid);
    if (instance_exists(overlapping_object)) {
      action = new ParallelAction([action, overlapping_object.on_move_onto(dir)]);
    }
    push_action(action);
  } else {
    push_action(new PlayerRotateAction(obj_Player.facing_direction, dir));
  }
}

function can_move_to(dest_x, dest_y, dir) {
  if (!position_meeting(dest_x, dest_y, par_FloorTile)) {
    return false;
  }

  var solid_object = instance_position(dest_x, dest_y, par_Solid);
  if ((instance_exists(solid_object)) && (!solid_object.can_move_onto(dir))) {
    return false;
  }

  return true;
}

function get_object_push_action(target_object, dir) {
  var src_x = target_object.x;
  var src_y = target_object.y;
  var dest_x = src_x + lengthdir_x(GRID_SIZE, dir * 90);
  var dest_y = src_y + lengthdir_y(GRID_SIZE, dir * 90);
  return new ObjectPushAction(target_object, src_x, src_y, dest_x, dest_y);
}

// Check if the object is above a pit and should fall in. If so, start
// doing so.
function check_if_should_fall(target_object) {
  if (!position_meeting(target_object.x, target_object.y, par_FloorTile)) {
    // Fall in.
    push_action(new ObjectFallAction(target_object, target_object.x, target_object.y));
  }
}
