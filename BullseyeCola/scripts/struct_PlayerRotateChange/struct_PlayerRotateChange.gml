
function PlayerRotateChange(src_facing_, dest_facing_) : UndoableChange() constructor {
  src_facing = src_facing_;
  dest_facing = dest_facing_;

  static can_apply = function() {
    return src_facing != dest_facing;
  }

  static apply = function() {}

  static undo = function() {
    obj_Player.facing_direction = src_facing;
  }

}
