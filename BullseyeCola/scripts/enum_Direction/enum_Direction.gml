
enum Direction {
  RIGHT = 0,
  UP = 1,
  LEFT = 2,
  DOWN = 3,
}

function directionToPlayerSprite(dir) {
  switch (dir) {
  case Direction.RIGHT:
    return spr_PlayerRight;
  case Direction.UP:
    return spr_PlayerUp;
  case Direction.DOWN:
    return spr_PlayerDown;
  case Direction.LEFT:
    return spr_PlayerLeft;
  }
  return spr_PlayerDown;
}