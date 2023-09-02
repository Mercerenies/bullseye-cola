
function PlayerTrampleAction() : Action() constructor {

  static on_start = function() {
    obj_Player.forced_layer = 1;
    undo_stack_apply_change(new ObjectDestroyChange(obj_Player.id, obj_Player.x, obj_Player.y));
  }

  static run_step = function() {
    with (obj_Player) {
      image_yscale = approach(image_yscale, 0, 0.05);
    }
  }

  static is_finished = function() {
    return obj_Player.image_yscale <= 0;
  }

  static on_finish = function() {
    obj_Player.forced_layer = undefined;
    obj_Player.image_yscale = 1;
    destroy(obj_Player.id, false);
  }

}
