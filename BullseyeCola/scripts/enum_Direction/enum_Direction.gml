
enum Direction {
  RIGHT = 0,
  UP_RIGHT = 1,
  UP = 2,
  UP_LEFT = 3,
  LEFT = 4,
  DOWN_LEFT = 5,
  DOWN = 6,
  DOWN_RIGHT = 7,
}

function direction_to_player_sprite(dir) {
  switch (eucmod(dir, 8)) {
  case Direction.RIGHT:
    return spr_PlayerRight;
  case Direction.UP_RIGHT:
  case Direction.UP:
  case Direction.UP_LEFT:
    return spr_PlayerUp;
  case Direction.DOWN_RIGHT:
  case Direction.DOWN:
  case Direction.DOWN_LEFT:
    return spr_PlayerDown;
  case Direction.LEFT:
    return spr_PlayerLeft;
  }
  return spr_PlayerDown;
}

function direction_to_player_jump_sprite(dir) {
  switch (eucmod(dir, 8)) {
  case Direction.RIGHT:
    return spr_PlayerRightJump;
  case Direction.UP_RIGHT:
  case Direction.UP:
  case Direction.UP_LEFT:
    return spr_PlayerUpJump;
  case Direction.DOWN_RIGHT:
  case Direction.DOWN:
  case Direction.DOWN_LEFT:
    return spr_PlayerDownJump;
  case Direction.LEFT:
    return spr_PlayerLeftJump;
  }
  return spr_PlayerDownJump;
}

function direction_x(dir) {
  switch (eucmod(dir, 8)) {
  case Direction.RIGHT:
  case Direction.UP_RIGHT:
  case Direction.DOWN_RIGHT:
    return GRID_SIZE;
  case Direction.LEFT:
  case Direction.UP_LEFT:
  case Direction.DOWN_LEFT:
    return - GRID_SIZE;
  }
  return 0;
}

function direction_y(dir) {
  switch (eucmod(dir, 8)) {
  case Direction.UP:
  case Direction.UP_RIGHT:
  case Direction.UP_LEFT:
    return - GRID_SIZE;
  case Direction.DOWN:
  case Direction.DOWN_RIGHT:
  case Direction.DOWN_LEFT:
    return GRID_SIZE;
  }
  return 0;
}

function normalize_direction_to_cardinal(dir) {
  switch (eucmod(dir, 8)) {
  case Direction.RIGHT:
    return Direction.RIGHT;
  case Direction.UP_RIGHT:
  case Direction.UP:
  case Direction.UP_LEFT:
    return Direction.UP;
  case Direction.DOWN_RIGHT:
  case Direction.DOWN:
  case Direction.DOWN_LEFT:
    return Direction.DOWN;
  case Direction.LEFT:
    return Direction.LEFT;
  }
  return Direction.DOWN;
}
