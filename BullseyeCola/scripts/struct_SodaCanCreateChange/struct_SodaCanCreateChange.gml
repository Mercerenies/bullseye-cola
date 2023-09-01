
function SodaCanCreateChange(soda_number_, xx_, yy_) : UndoableChange() constructor {
  soda_number = soda_number_;
  xx = xx_;
  yy = yy_;

  static apply = function() {}

  static undo = function() {
    with (ui_UISodaCan) {
      if ((soda_number == other.soda_number) && (x == other.xx) && (y == other.yy)) {
        instance_destroy();
        break;
      }
    }
  }

}
