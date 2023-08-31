
function push_action(action) {
  ds_queue_enqueue(ctrl_ActionQueue.action_queue, action);
}

function is_player_idle() {
  return ds_queue_empty(ctrl_ActionQueue.action_queue);
}