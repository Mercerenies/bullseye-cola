
current_action = undefined;
action_queue = ds_queue_create();

do_step = function() {
  if ((is_undefined(current_action)) && (!ds_queue_empty(action_queue))) {
    current_action = ds_queue_dequeue(action_queue);
    current_action.on_start();
  }
  if (!is_undefined(current_action)) {
    current_action.run_step();
    if (current_action.is_finished()) {
      current_action.on_finish();
      current_action = undefined;
    }
  }
}
