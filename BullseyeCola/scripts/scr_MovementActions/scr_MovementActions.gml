
function try_move_player(dir) {
  var src_x = obj_Player.x;
  var src_y = obj_Player.y;
  var dest_x = src_x + direction_x(dir);
  var dest_y = src_y + direction_y(dir);
  if (can_move_to(dest_x, dest_y, dir)) {
    undo_stack_begin_move();
    var action = new PlayerMoveAction(src_x, src_y, obj_Player.facing_direction, dest_x, dest_y, dir);
    var overlapping_object = instance_position(dest_x + GRID_SIZE / 2, dest_y + GRID_SIZE / 2, par_Solid);
    if (instance_exists(overlapping_object)) {
      action = new ParallelAction([action, overlapping_object.on_move_onto(dir, false)]);
    }
    push_action(action);
    return true;
  } else {
    push_action(new PlayerRotateAction(obj_Player.facing_direction, dir));
    return false;
  }
}

function shove_player_in(dir, is_special_move) {
  var player_dir = obj_Player.facing_direction;
  var src_x = obj_Player.x;
  var src_y = obj_Player.y;
  var dest_x = src_x + direction_x(dir);
  var dest_y = src_y + direction_y(dir);
  if (can_be_moved_to(dest_x, dest_y, dir, false)) {
    var action = new PlayerMoveAction(src_x, src_y, player_dir, dest_x, dest_y, player_dir);
    var overlapping_object = instance_position(dest_x + GRID_SIZE / 2, dest_y + GRID_SIZE / 2, par_Solid);
    if (instance_exists(overlapping_object)) {
      action = new ParallelAction([action, overlapping_object.on_move_onto(dir, false)]);
    }
    push_action(action);
    return true;
  }
  return false;
}

function hop_player_in(dir) {
  var player_dir = obj_Player.facing_direction;
  var src_x = obj_Player.x;
  var src_y = obj_Player.y;
  var mid_x = src_x + direction_x(dir);
  var mid_y = src_y + direction_y(dir);
  var dest_x = src_x + 2 * direction_x(dir);
  var dest_y = src_y + 2 * direction_y(dir);
  if (!can_be_moved_to(mid_x, mid_y, dir, true)) {
    return false;
  }
  if (!can_be_moved_to(dest_x, dest_y, dir, true)) {
    // Do a one-space hop.
    dest_x = mid_x;
    dest_y = mid_y;
  }
  var action = new PlayerHopAction(src_x, src_y, player_dir, dest_x, dest_y);
  var overlapping_object = instance_position(dest_x + GRID_SIZE / 2, dest_y + GRID_SIZE / 2, par_Solid);
  if (instance_exists(overlapping_object)) {
    action = new ParallelAction([action, overlapping_object.on_move_onto(dir, true)]);
  }
  push_action(action);
  return true;
}

function can_move_to(dest_x, dest_y, dir) {
  if (!position_meeting(dest_x + GRID_SIZE / 2, dest_y + GRID_SIZE / 2, par_FloorTile)) {
    return false;
  }
  if (!can_be_moved_to(dest_x, dest_y, dir, false)) {
    return false;
  }
  return true;
}

function can_be_moved_to(dest_x, dest_y, dir, is_special_move) {
  var solid_object = instance_position(dest_x + GRID_SIZE / 2, dest_y + GRID_SIZE / 2, par_Solid);
  if ((instance_exists(solid_object)) && (!solid_object.can_move_onto(dir, is_special_move))) {
    return false;
  }
  return true;
}

function get_object_push_action(target_object, dir) {
  var src_x = target_object.x;
  var src_y = target_object.y;
  var dest_x = src_x + direction_x(dir);
  var dest_y = src_y + direction_y(dir);
  return new ObjectPushAction(target_object, src_x, src_y, dest_x, dest_y);
}

// Check if the object is above a pit and should fall in. If so, start
// doing so. Returns true if we started falling as a result of this call.
function check_if_should_fall(target_object) {
  if (!position_meeting(target_object.x + GRID_SIZE / 2, target_object.y + GRID_SIZE / 2, par_FloorTile)) {
    // Fall in.
    push_action(new ObjectFallAction(target_object, target_object.x, target_object.y));
    return true;
  }
  return false;
}

// Returns true if the object keeps moving. Returns false if it stops,
// regardless of whether or not it passed its momentum onto something
// else.
function carry_momentum(object_id, dir, is_first_move) {
  var src_x = object_id.x;
  var src_y = object_id.y;
  var arrow_panel = instance_position(src_x + GRID_SIZE / 2, src_y + GRID_SIZE / 2, obj_ArrowFloorTile);
  if (instance_exists(arrow_panel)) {
    dir = arrow_panel.image_index;
  }

  var dest_x = src_x + direction_x(dir);
  var dest_y = src_y + direction_y(dir);
  var obstacle = instance_position(dest_x + GRID_SIZE / 2, dest_y + GRID_SIZE / 2, par_Solid);
  if (instance_exists(obstacle) && object_is_ancestor_fixed(obstacle.object_index, obj_Player)) {
    // Kill the player and keep moving
    push_action(new ParallelAction([
      new ObjectSlideAction(object_id, src_x, src_y, dir, is_first_move),
      new PlayerTrampleAction(),
    ]));
    return true;
  } else if (instance_exists(obstacle)) {
    if (object_id.is_explosive) {
      // Explode
      explode_nearby(object_id.x, object_id.y, true);
      destroy(object_id);
    } else if (object_is_ancestor(obstacle.object_index, par_Pushable)) {
      // Transfer momentum
      carry_momentum(obstacle, dir, true);
    }
    return false;
  } else {
    push_action(new ObjectSlideAction(object_id, src_x, src_y, dir, is_first_move));
    return true;
  }
}

function destroy(object_id, log_undo=true) {
  with (object_id) {
    if (log_undo) {
      undo_stack_apply_change(new ObjectDestroyChange(self, x, y));
    }
    y -= 9999;
    destroyed = true;
  }
}

function explode_at(xx, yy) {
  if (position_meeting(xx + GRID_SIZE / 2, yy + GRID_SIZE / 2, ui_ExplosionIcon)) {
    // Prevent infinite loops by not repeating explosions on the same position.
    return;
  }
  instance_create_layer(xx + GRID_SIZE / 2, yy + GRID_SIZE / 2, "Instances_UI", ui_ExplosionIcon);
  var victim = instance_position(xx + GRID_SIZE / 2, yy + GRID_SIZE / 2, par_PhysicalObject);
  if (instance_exists(victim)) {
    victim.on_explode();
  }
  var floor_victim = instance_position(xx + GRID_SIZE / 2, yy + GRID_SIZE / 2, par_FloorTile);
  if (instance_exists(floor_victim)) {
    floor_victim.on_explode();
  }
}

function explode_nearby(xx, yy, include_self) {
  for (var i = -1; i <= 1; i++) {
    for (var j = -1; j <= 1; j++) {
      var x1 = xx + i * GRID_SIZE;
      var y1 = yy + j * GRID_SIZE;
      if ((x1 == xx) && (y1 == yy) && (!include_self)) {
        continue;
      }
      explode_at(x1, y1);
    }
  }
}
