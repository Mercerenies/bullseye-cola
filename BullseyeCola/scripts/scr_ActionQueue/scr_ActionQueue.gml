
function push_action(action) {
  ds_queue_enqueue(ctrl_ActionQueue.action_queue, action);
}

function is_player_idle() {
  return (ds_queue_empty(ctrl_ActionQueue.action_queue) && is_undefined(ctrl_ActionQueue.current_action) && is_undefined(ctrl_ActionQueue.current_program));
}

function is_player_alive() {
  return !obj_Player.destroyed;
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
    return (index >= array_length(code_array)) || (!is_player_alive());
  }

  static advance_to_wend = function() {
    while ((!is_finished()) && (!is_instanceof(code_array[index], WendCode))) {
      index += 1;
    }
  }

  static regress_to_while = function() {
    while ((index >= 0) && (!is_instanceof(code_array[index], WhileCode))) {
      index -= 1;
    }
  }

}

// Abstract base class.
function Code() constructor {

  static execute = function(program) {
    // Abstract method.
  }

}

// DO NOT NEST WHILE LOOPS! PLEASE!
function WhileCode(condition_) : Code() constructor {
  condition = condition_;

  static execute = function(program) {
    if (!condition.test()) {
      program.advance_to_wend();
      program.index++;
    }
  }

}

function WendCode() : Code() constructor {

  static execute = function(program) {
    program.index--;
    program.regress_to_while();
  }

}

function MoveInDirectionCode(relative_dir_, is_special_move_) : Code() constructor {
  relative_dir = relative_dir_;
  is_special_move = is_special_move_;

  static execute = function(program) {
    var success = shove_player_in(relative_dir + obj_Player.facing_direction, is_special_move);
    if (!success) {
      push_action(new PlayerDenyAction(obj_Player.x, obj_Player.y));
    }
  }

}

function KickInDirectionCode(relative_dir_) : Code() constructor {
  relative_dir = relative_dir_;

  static execute = function(program) {
    var dir = obj_Player.facing_direction + relative_dir;
    var src_x = obj_Player.x;
    var src_y = obj_Player.y;
    var dest_x = src_x + direction_x(dir);
    var dest_y = src_y + direction_y(dir);
    var target = instance_position(dest_x + GRID_SIZE / 2, dest_y + GRID_SIZE / 2, par_Pushable);
    if (instance_exists(target)) {
      carry_momentum(target, dir, true);
    }
    var kick_x = src_x + lengthdir_x(GRID_SIZE / 2, 45 * dir);
    var kick_y = src_y + lengthdir_y(GRID_SIZE / 2, 45 * dir);
    with (instance_create_layer(kick_x + GRID_SIZE / 2, kick_y + GRID_SIZE / 2, "Instances_UI", ui_KickIcon)) {
      self.dir = dir;
    }
  }

}

function BoomKickInDirectionCode(relative_dir_) : Code() constructor {
  relative_dir = relative_dir_;

  static execute = function(program) {
    var dir = obj_Player.facing_direction + relative_dir;
    var src_x = obj_Player.x;
    var src_y = obj_Player.y;
    var dest_x = src_x + direction_x(dir);
    var dest_y = src_y + direction_y(dir);
    var target = instance_position(dest_x + GRID_SIZE / 2, dest_y + GRID_SIZE / 2, par_Pushable);
    if (instance_exists(target)) {
      undo_stack_apply_change(new MakeObjectExplosiveChange(target, target.is_explosive));
      carry_momentum(target, dir, true);
    }
    var kick_x = src_x + lengthdir_x(GRID_SIZE / 2, 45 * dir);
    var kick_y = src_y + lengthdir_y(GRID_SIZE / 2, 45 * dir);
    with (instance_create_layer(kick_x + GRID_SIZE / 2, kick_y + GRID_SIZE / 2, "Instances_UI", ui_KickIcon)) {
      self.dir = dir;
    }
  }

}

function HopInDirectionCode(relative_dir_) : Code() constructor {
  relative_dir = relative_dir_;

  static execute = function(program) {
    var success = hop_player_in(relative_dir + obj_Player.facing_direction);
    if (!success) {
      push_action(new PlayerDenyAction(obj_Player.x, obj_Player.y));
    }
  }

}

function ExplodeInPlaceCode() : Code() constructor {

  static execute = function(program) {
    push_action(new ExplodeAction(obj_Player.x, obj_Player.y, false));
  }

}

// Do the little "deny" hop.
function DenialCode() : Code() constructor {

  static execute = function(program) {
    push_action(new PlayerDenyAction(obj_Player.x, obj_Player.y));
  }

}

// Do the little "deny" hop unless some condition is true.
function DenialUnlessCode(condition_) : Code() constructor {
  condition = condition_;

  static execute = function(program) {
    if (!condition.test()) {
      push_action(new PlayerDenyAction(obj_Player.x, obj_Player.y));
    }
  }

}

// If the player is on an arrow, obey it.
function ObeyArrowCode() : Code() constructor {

  static execute = function(program) {
    var arrow = instance_position(obj_Player.x + GRID_SIZE / 2, obj_Player.y + GRID_SIZE / 2, obj_ArrowFloorTile);
    if (instance_exists(arrow)) {
      push_action(new PlayerRotateAction(obj_Player.facing_direction, arrow.image_index));
    }
  }

}

// Abstract base class.
function Condition() constructor {

  static test = function() {
    // Abstract base method.
    return false;
  }

}

// Abstract base class.
function CanBeMovedToCondition(relative_dir_, is_special_move_=true) : Condition() constructor {
  relative_dir = relative_dir_;
  is_special_move = is_special_move_;

  static test = function() {
    var dir = obj_Player.facing_direction + relative_dir;
    var src_x = obj_Player.x;
    var src_y = obj_Player.y;
    var dest_x = src_x + direction_x(dir);
    var dest_y = src_y + direction_y(dir);
    return can_be_moved_to(dest_x, dest_y, dir, is_special_move);
  }

}
