
function soda_get_program(soda_number) {
  switch (soda_number) {
  case 0: // Water
    return new Program([
      new DenialCode(),
    ]);
  case 1:
    break;
  case 2: // Hop Cola
    return new Program([
      new HopInDirectionCode(0),
    ]);
  case 3:
    break;
  case 4:
    break;
  case 5:
    break;
  case 6:
    break;
  case 7:
    break;
  case 8: // Left Cola
    return new Program([
      new MoveInDirectionCode(1),
    ]);
  case 9:
    break;
  case 10: // Left Hop Cola
    return new Program([
      new HopInDirectionCode(1),
    ]);
  case 11:
    break;
  case 12:
    break;
  case 13:
    break;
  case 14:
    break;
  case 15:
    break;
  case 16:
    break;
  case 17:
    break;
  case 18:
    break;
  case 19:
    break;
  case 20:
    break;
  case 21:
    break;
  case 22:
    break;
  case 23:
    break;
  case 24:
    break;
  case 25:
    break;
  case 26:
    break;
  case 27:
    break;
  case 28:
    break;
  case 29:
    break;
  case 30:
    break;
  case 31:
    break;
  case 32: // Right Cola
    return new Program([
      new MoveInDirectionCode(-1),
    ]);
  case 33:
    break;
  case 34: // Right Hop Cola
    return new Program([
      new HopInDirectionCode(-1),
    ]);
  case 35:
    break;
  case 36:
    break;
  case 37:
    break;
  case 38:
    break;
  case 39:
    break;
  case 48:
    break;
  case 49:
    break;
  case 50:
    break;
  case 51:
    break;
  case 52:
    break;
  case 53:
    break;
  case 54:
    break;
  case 55:
    break;
  }
  return new Program([]);
}
