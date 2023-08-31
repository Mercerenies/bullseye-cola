
function PlayerMoveAction(src_x_, src_y_, dest_x_, dest_y_, dir_) : Action() constructor {
  src_x = src_x_;
  src_y = src_y_;
  dest_x = dest_x_;
  dest_y = dest_y_;
  dir = dir_;
  animation_time = 0.0;

  static run_step = function() {
    animation_time += 0.05;
    obj_Player.x = lerp(src_x, dest_x, animation_time);
    obj_Player.y = lerp(src_y, dest_y, animation_time);
    obj_Player.facing_direction = dir;
    obj_Player.animating = true;
  }

  static is_finished = function() {
    return (animation_time >= 1.0);
  }

}
