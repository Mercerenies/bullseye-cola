
// Trivial action; does nothing and immediately terminates.
function TrivialAction() : Action() constructor {

  static run_step = function() {}

  static is_finished = function() {
    return true;
  }

}
