
// Precondition: object_id_ is the ID of a par_Pushable object.
function ObjectSlideAction(object_id_, src_x_, src_y_, dir_, is_first_move_) : Action() constructor {
  object_id = object_id_;
  src_x = src_x_;
  src_y = src_y_;
  dir = dir_;
  dest_x = src_x + direction_x(dir);
  dest_y = src_y + direction_y(dir);
  is_first_move = is_first_move_;
  animation_time = 0.0;

  static on_start = function() {
    if (is_first_move) {
      undo_stack_apply_change(new ObjectMoveChange(object_id, src_x, src_y));
    }
    object_id.is_sliding = true;
  }

  static run_step = function() {
    animation_time += 1 / ANIMATION_LENGTH;
    object_id.x = lerp(src_x, dest_x, animation_time);
    object_id.y = lerp(src_y, dest_y, animation_time);
  }

  static is_finished = function() {
    return (animation_time >= 1.0);
  }

  static on_finish = function() {
    object_id.is_sliding = false;
    var is_falling = check_if_should_fall(object_id);
    if (!is_falling) {
      carry_momentum(object_id, dir, false);
    }
  }

}
