
function SodaCanDestroyChange(soda_number_, xx_, yy_) : UndoableChange() constructor {
  soda_number = soda_number_;
  xx = xx_;
  yy = yy_;

  static apply = function() {}

  static undo = function() {
    with (instance_create_layer(xx, yy, "Instances_UI", ui_UISodaCan)) {
      soda_number = other.soda_number;
    }
  }

}
