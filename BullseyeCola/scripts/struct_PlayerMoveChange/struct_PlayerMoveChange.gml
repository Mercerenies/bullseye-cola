
function PlayerMoveChange(src_x_, src_y_, src_facing_, dest_x_, dest_y_, dest_facing_) : UndoableChange() constructor {
  src_x = src_x_;
  src_y = src_y_;
  src_facing = src_facing_;
  dest_x = dest_x_;
  dest_y = dest_y_;
  dest_facing = dest_facing_;

  static apply = function() {}

  static undo = function() {
    obj_Player.x = src_x;
    obj_Player.y = src_y;
    obj_Player.facing_direction = src_facing;
  }

}
