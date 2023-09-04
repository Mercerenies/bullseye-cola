
function PlayerHopAction(src_x_, src_y_, facing_dir_, dest_x_, dest_y_) : Action() constructor {
  src_x = src_x_;
  src_y = src_y_;
  facing_dir = facing_dir_;
  dest_x = dest_x_;
  dest_y = dest_y_;
  animation_time = 0.0;
  animation_length = ANIMATION_LENGTH * 2;

  static on_start = function() {
    undo_stack_apply_change(new PlayerMoveChange(src_x, src_y, facing_dir, dest_x, dest_y, facing_dir));
    audio_play_sound(snd_Hop, 10, false);
    obj_Player.hopping = true;
  }

  static run_step = function() {
    animation_time += 1 / animation_length;
    var jump_height = 32;
    var xx = lerp(src_x, dest_x, animation_time);
    var yy = lerp(src_y, dest_y, animation_time);
    var zz = jump_height * (4 * (1 - animation_time) * animation_time);
    obj_Player.x = xx;
    obj_Player.y = yy - zz;
  }

  static is_finished = function() {
    return (animation_time >= 1.0);
  }

  static on_finish = function() {
    check_if_should_fall(obj_Player.id);
    obj_Player.hopping = false;
  }

}
