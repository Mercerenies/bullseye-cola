
function SodaCanTransmuteChange(xx_, yy_, src_soda_number_, dest_soda_number_) : UndoableChange() constructor {
  xx = xx_;
  yy = yy_;
  src_soda_number = src_soda_number_;
  dest_soda_number = dest_soda_number_;

  static apply = function() {}

  static undo = function() {
    with (ui_UISodaCan) {
      if ((x == other.xx) && (y == other.yy)) {
        soda_number = other.src_soda_number;
        break;
      }
    }
  }

}
