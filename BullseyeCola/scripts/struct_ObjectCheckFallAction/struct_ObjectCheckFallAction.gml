
// Precondition: object_id_ is the ID of a par_PhysicalObject.
function ObjectCheckFallAction(object_id_, src_x_, src_y_) : Action() constructor {
  object_id = object_id_;

  static run_step = function() {
    check_if_should_fall(object_id);
  }

  static is_finished = function() {
    return true;
  }

}
