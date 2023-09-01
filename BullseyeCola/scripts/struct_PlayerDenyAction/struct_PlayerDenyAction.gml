
// This is the mini in-place hop that the player performs when told to
// do something blatantly impossible. Purely cosmetic and just provides
// feedback to the player.
function PlayerDenyAction(src_x_, src_y_) : Action() constructor {
  src_x = src_x_;
  src_y = src_y_;
  animation_time = 0.0;

  static run_step = function() {
    animation_time += 1 / ANIMATION_LENGTH;
    var jump_height = 8;
    var t = 4 * (1 - animation_time) * animation_time;
    var dest_y = src_y - jump_height;
    obj_Player.y = lerp(src_y, dest_y, t);
  }

  static is_finished = function() {
    return (animation_time >= 1.0);
  }

}
