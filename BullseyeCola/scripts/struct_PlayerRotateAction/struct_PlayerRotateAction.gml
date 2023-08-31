
function PlayerRotateAction(dir_) : Action() constructor {
  dir = dir_;

  static run_step = function() {
    animation_time += 0.05;
    obj_Player.facing_direction = dir;
  }

  static is_finished = function() {
    return true;
  }

}
