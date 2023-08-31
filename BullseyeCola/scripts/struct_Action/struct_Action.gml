
function Action() constructor {
  // Abstract base class.

  static run_step = function() {
    // Abstract method.
  }

  static is_finished = function() {
    // Abstract method.
    return false;
  }

  static on_finish = function() {
    // Default implementation is empty.
  }

}