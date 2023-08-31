
function PlayerRotateAction(src_dir_, dest_dir_) : Action() constructor {
  src_dir = src_dir_;
  dest_dir = dest_dir_;

  static on_start = function() {
    undo_stack_apply_change(new PlayerRotateChange(src_dir, dest_dir));
  }

  static run_step = function() {
    obj_Player.facing_direction = dest_dir;
    obj_Player.animating = false;
  }

  static is_finished = function() {
    return true;
  }

}
