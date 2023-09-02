
function ObjectDestroyChange(object_id_, src_x_, src_y_) : UndoableChange() constructor {
  object_id = object_id_;
  src_x = src_x_;
  src_y = src_y_;

  static apply = function() {}

  static undo = function() {
    object_id.x = src_x;
    object_id.y = src_y;
    object_id.visible = true;
    object_id.destroyed = false;
    object_id.destroying = false;
    object_id.back_layer = false;
  }

}
