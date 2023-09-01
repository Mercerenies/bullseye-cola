
function ExplodeAction(xx_, yy_, include_self_) : Action() constructor {
  xx = xx_;
  yy = yy_;
  include_self = include_self_;

  static on_start = function() {
    explode_nearby(xx, yy, include_self);
  }

  static run_step = function() {}

  static is_finished = function() {
    // This action remains on the queue (blocking user input) until
    // all explosion animations are finished.
    return !instance_exists(ui_ExplosionIcon);
  }

}
