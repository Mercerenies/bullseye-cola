
// Precondition: object_id_ is the ID of a par_PhysicalObject.
function ObjectFallAction(object_id_, src_x_, src_y_) : Action() constructor {
  object_id = object_id_;
  src_x = src_x_;
  src_y = src_y_;
  animation_time = 0.0;

  static on_start = function() {
    undo_stack_apply_change(new ObjectDestroyChange(object_id, src_x, src_y));
    object_id.back_layer = true;
    object_id.destroying = true;
    // Whether or not this is the player currently falling, stop them
    // from walking in place while an object is falling.
    obj_Player.animating = false;
  }

  static run_step = function() {
    animation_time += 1 / ANIMATION_LENGTH;
    dest_y = src_y + 48;
    object_id.y = lerp(src_y, dest_y, animation_time);
    object_id.image_alpha = lerp(1, 0, animation_time);
  }

  static is_finished = function() {
    return (animation_time >= 1.0);
  }

  static on_finish = function() {
    destroy(object_id, false);
    object_id.image_alpha = 1;
  }

}
