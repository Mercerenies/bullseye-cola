
// Precondition: object_id_ is the ID of a par_Pushable object.
function ObjectPushAction(object_id_, src_x_, src_y_, dest_x_, dest_y_) : Action() constructor {
  object_id = object_id_;
  src_x = src_x_;
  src_y = src_y_;
  dest_x = dest_x_;
  dest_y = dest_y_;
  animation_time = 0.0;

  static on_start = function() {
    audio_play_sound(snd_Push, 10, false);
    undo_stack_apply_change(new ObjectMoveChange(object_id, src_x, src_y));
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
    check_if_should_fall(object_id);
  }

}
