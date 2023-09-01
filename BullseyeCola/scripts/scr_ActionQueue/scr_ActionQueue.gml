
function push_action(action) {
  ds_queue_enqueue(ctrl_ActionQueue.action_queue, action);
}

function is_player_idle() {
  return (ds_queue_empty(ctrl_ActionQueue.action_queue) && is_undefined(ctrl_ActionQueue.current_action) && is_undefined(ctrl_ActionQueue.current_program));
}

// Clobbers any existing program, if there is one.
function set_executing_program(program) {
  ctrl_ActionQueue.current_program = program;
}

function Program(code_array_) constructor {
  code_array = code_array_;
  index = 0;

  static execute_step = function() {
    if (is_finished()) {
      return;
    }
    var code = code_array[index];
    index++;
    code.execute(self);
  }

  static is_finished = function() {
    return index >= array_length(code_array);
  }

}

// Abstract base class.
function Code() constructor {

  static execute = function(program) {
    // Abstract method.
  }

}

function MoveInDirectionCode(relative_dir_) : Code() constructor {
  relative_dir = relative_dir_;

  static execute = function(program) {
    shove_player_in(relative_dir + obj_Player.facing_direction);
  }

}
