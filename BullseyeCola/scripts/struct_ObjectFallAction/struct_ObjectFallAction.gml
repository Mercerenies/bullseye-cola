
// Precondition: object_id_ is the ID of a par_Pushable object.
function ObjectFallAction(object_id_, src_x_, src_y_) : Action() constructor {
  object_id = object_id_;
  src_x = src_x_;
  src_y = src_y_;
  animation_time = 0.0;

  static on_start = function() {
    undo_stack_apply_change(new ObjectDestroyChange(object_id, src_x, src_y));
    object_id.back_layer = true;
  }

  static run_step = function() {
    animation_time += 0.1;
    dest_y = src_y + 32;
    object_id.y = lerp(src_y, dest_y, animation_time);
    object_id.image_alpha = lerp(1, 0, animation_time);
  }

  static is_finished = function() {
    return (animation_time >= 1.0);
  }

  static on_finish = function() {
    object_id.y -= 9999; // Remove from collision consideration
    object_id.visible = false;
    object_id.destroyed = true;
    object_id.image_alpha = 1;
  }

}
