
function PlayerVictoryAction() : Action() constructor {
  src_y = obj_Player.y;
  animation_time = 0.0;

  static on_start = function() {
    audio_play_sound(snd_Yeah, 10, false);
    obj_Player.animating = false;
  }

  static run_step = function() {
    animation_time += 1 / ANIMATION_LENGTH;
    dest_y = src_y - 48;
    obj_Player.y = lerp(src_y, dest_y, animation_time);
    obj_Player.image_alpha = lerp(1, 0, animation_time);
  }

  static is_finished = function() {
    return (animation_time >= 1.0);
  }

  static on_finish = function() {
    room_goto_next(); // Wheeee!
  }

}
