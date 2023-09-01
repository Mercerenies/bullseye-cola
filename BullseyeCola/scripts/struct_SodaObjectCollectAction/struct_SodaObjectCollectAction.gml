
// Precondition: object_id_ is the ID of a obj_SodaCan object.
function SodaObjectCollectAction(object_id_, src_x_, src_y_) : Action() constructor {
  object_id = object_id_;
  src_x = src_x_;
  src_y = src_y_;
  animation_time = 0.0;

  static on_start = function() {
    undo_stack_apply_change(new ObjectDestroyChange(object_id, src_x, src_y));
    collect_soda_can(object_id.soda_number);
  }

  static run_step = function() {
    animation_time += 1 / ANIMATION_LENGTH;
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
