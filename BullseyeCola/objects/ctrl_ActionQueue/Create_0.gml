
action_queue = ds_queue_create();

do_step = function() {
  if (!ds_queue_empty(action_queue)) {
    var top = ds_queue_head(action_queue);
    top.run_step();
    if (top.is_finished()) {
      top.on_finish();
      ds_queue_dequeue(action_queue);
    }
  }
}