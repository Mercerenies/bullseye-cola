
function SodaCanMoveChange(src_x_, src_y_, dest_x_, dest_y_) : UndoableChange() constructor {
  src_x = src_x_;
  src_y = src_y_;
  dest_x = dest_x_;
  dest_y = dest_y_;

  static apply = function() {}

  static undo = function() {
    with (ui_UISodaCan) {
      if ((x == other.dest_x) && (y == other.dest_y)) {
        x = other.src_x;
        y = other.src_y;
        break;
      }
    }
  }

}
