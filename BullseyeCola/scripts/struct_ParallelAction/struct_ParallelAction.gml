
function ParallelAction(actions_) : Action() constructor {
  actions = actions_;

  static on_start = function() {
    for (var i = 0; i < array_length(actions); i++) {
      actions[i].on_start();
    }
  }

  static run_step = function() {
    for (var i = 0; i < array_length(actions); i++) {
      actions[i].run_step();
    }
  }

  static on_finish = function() {
    for (var i = 0; i < array_length(actions); i++) {
      actions[i].on_finish();
    }
  }

  static is_finished = function() {
    // is_finished is true iff it's true for ALL actions
    for (var i = 0; i < array_length(actions); i++) {
      if (!actions[i].is_finished()) {
        return false;
      }
    }
    return true;
  }

}
