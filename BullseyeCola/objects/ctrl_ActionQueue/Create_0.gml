
// The action queue contains a queue and a current program.
// The queue always takes precedent. If there's something on the
// queue, we execute it until done. This queued action *might*
// enqueue additional actions, which (again) take precedent over
// the program. If there are no actions on the queue, we execute
// the program.
//
// We continue executing as much of the program as possible in
// one frame until either
// (1) the program terminates, or
// (2) the program pushes something onto the actions queue.
//
// At that time, we stop executing the program until the queue is
// free again. The player is only idle if the program and queue
// are both empty.

current_program = undefined;
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
  } else if (!is_undefined(current_program)) {
    while ((!current_program.is_finished()) && (ds_queue_empty(action_queue))) {
      current_program.execute_step();
    }
    if (current_program.is_finished()) {
      current_program = undefined;
    }
  }
}
