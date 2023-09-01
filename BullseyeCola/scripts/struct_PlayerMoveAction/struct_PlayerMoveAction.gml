
function PlayerMoveAction(src_x_, src_y_, src_dir_, dest_x_, dest_y_, dest_dir_) : Action() constructor {
  src_x = src_x_;
  src_y = src_y_;
  src_dir = src_dir_;
  dest_x = dest_x_;
  dest_y = dest_y_;
  dest_dir = dest_dir_;
  animation_time = 0.0;

  static on_start = function() {
    undo_stack_apply_change(new PlayerMoveChange(src_x, src_y, src_dir, dest_x, dest_y, dest_dir));
  }

  static run_step = function() {
    animation_time += 1 / ANIMATION_LENGTH;
    obj_Player.x = lerp(src_x, dest_x, animation_time);
    obj_Player.y = lerp(src_y, dest_y, animation_time);
    obj_Player.facing_direction = dest_dir;
    obj_Player.animating = true;
  }

  static is_finished = function() {
    return (animation_time >= 1.0);
  }

  static on_finish = function() {
    check_if_should_fall(obj_Player.id);
  }

}
