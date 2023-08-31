
function PlayerMoveAction(src_x_, src_y_, dest_x_, dest_y_, sprite_) : Action() constructor {
  src_x = src_x_;
  src_y = src_y_;
  dest_x = dest_x_;
  dest_y = dest_y_;
  sprite = sprite_;
  animation_time = 0.0;

  static run_step = function() {
    animation_time += 0.05;
    obj_Player.x = lerp(src_x, dest_x, animation_time);
    obj_Player.y = lerp(src_y, dest_y, animation_time);
    obj_Player.sprite_index = sprite;
    obj_Player.image_index = floor(obj_Player.tick / 8);
  }

  static is_finished = function() {
    return (animation_time >= 1.0);
  }

}
