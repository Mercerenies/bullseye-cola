
function PlayerStopAnimatingAction() : Action() constructor {

  static run_step = function() {
    obj_Player.animating = false;
  }

  static is_finished = function() {
    return true;
  }

}
