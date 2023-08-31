
function PlayerRotateAction(dir_) : Action() constructor {
  dir = dir_;

  static run_step = function() {
    obj_Player.facing_direction = dir;
    obj_Player.animating = false;
  }

  static is_finished = function() {
    return true;
  }

}
