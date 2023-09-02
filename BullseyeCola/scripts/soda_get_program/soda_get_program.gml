
function soda_get_program(soda_number) {
  switch (soda_number) {
  case 0: // Water
    return new Program([
      new DenialCode(),
    ]);
  case 1: // Kick Cola
    return new Program([
      new KickInDirectionCode(0),
    ]);
  case 2: // Hop Cola
    return new Program([
      new HopInDirectionCode(0),
    ]);
  case 3: // Hop Kick Cola
    return new Program([
      new HopInDirectionCode(0),
      new KickInDirectionCode(0),
    ]);
  case 4: // Boom Cola
    return new Program([
      new ExplodeInPlaceCode(),
    ]);
  case 5: // Boom Kick Cola
    return new Program([
      new BoomKickInDirectionCode(0),
    ]);
  case 6: // Hop Boom Cola
    return new Program([
      new HopInDirectionCode(0),
      new ExplodeInPlaceCode(),
    ]);
  case 7: // Hop Boom Kick Cola
    return new Program([
      new HopInDirectionCode(0),
      new BoomKickInDirectionCode(0),
    ]);
  case 8: // Left Cola
    return new Program([
      new MoveInDirectionCode(1, false),
    ]);
  case 9: // Left Kick Cola
    return new Program([
      new KickInDirectionCode(1),
    ]);
  case 10: // Left Hop Cola
    return new Program([
      new HopInDirectionCode(1),
    ]);
  case 11: // Left Hop Kick Cola
    return new Program([
      new HopInDirectionCode(1),
      new KickInDirectionCode(1),
    ]);
  case 12: // Left Boom Cola
    return new Program([
      new MoveInDirectionCode(1, false),
      new ExplodeInPlaceCode(),
    ]);
  case 13: // Left Boom Kick Cola
    return new Program([
      new BoomKickInDirectionCode(1),
    ]);
  case 14: // Left Hop Boom Cola
    return new Program([
      new HopInDirectionCode(1),
      new ExplodeInPlaceCode(),
    ]);
  case 15: // Left Hop Boom Kick Cola
    return new Program([
      new HopInDirectionCode(1),
      new BoomKickInDirectionCode(1),
    ]);
  case 16: // Rush Cola
    return new Program([
      new ObeyArrowCode(),
      new DenialUnlessCode(new CanBeMovedToCondition(0, true)),
      new WhileCode(new CanBeMovedToCondition(0, true)),
        new MoveInDirectionCode(0, true),
        new ObeyArrowCode(),
      new WendCode(),
      new StopAnimatingCode(),
    ]);
  case 17: // Rush Kick Cola
    return new Program([
      new ObeyArrowCode(),
      new DenialUnlessCode(new CanBeMovedToCondition(0, true)),
      new WhileCode(new CanBeMovedToCondition(0, true)),
        new MoveInDirectionCode(0, true),
        new ObeyArrowCode(),
      new WendCode(),
      new StopAnimatingCode(),
      new KickInDirectionCode(0),
    ]);
  case 18: // Rush Hop Cola
    return new Program([
      new ObeyArrowCode(),
      new DenialUnlessCode(new CanBeMovedToCondition(0, true)),
      new WhileCode(new CanBeMovedToCondition(0, true)),
        new HopInDirectionCode(0, true),
        new ObeyArrowCode(),
      new WendCode(),
      new StopAnimatingCode(),
    ]);
  case 19: // Rush Hop Kick Cola
    return new Program([
      new ObeyArrowCode(),
      new HopInDirectionCode(0, true),
      new KickInDirectionCode(0, true),
      new WhileCode(new CanBeMovedToCondition(0, true)),
        new HopInDirectionCode(0, true),
        new KickInDirectionCode(0, true),
        new ObeyArrowCode(),
      new WendCode(),
      new StopAnimatingCode(),
    ]);
  case 20:
    break;
  case 21:
    break;
  case 22:
    break;
  case 23:
    break;
  case 24: // Left Rush Cola
    return new Program([
      new RotateCode(1),
      new ObeyArrowCode(),
      new DenialUnlessCode(new CanBeMovedToCondition(0, true)),
      new WhileCode(new CanBeMovedToCondition(0, true)),
        new MoveInDirectionCode(0, true),
        new ObeyArrowCode(),
      new WendCode(),
      new StopAnimatingCode(),
    ]);
  case 25: // Left Rush Kick Cola
    return new Program([
      new RotateCode(1),
      new ObeyArrowCode(),
      new DenialUnlessCode(new CanBeMovedToCondition(0, true)),
      new WhileCode(new CanBeMovedToCondition(0, true)),
        new MoveInDirectionCode(0, true),
        new ObeyArrowCode(),
      new WendCode(),
      new StopAnimatingCode(),
      new KickInDirectionCode(0),
    ]);
  case 26: // Left Rush Hop Cola
    return new Program([
      new RotateCode(1),
      new ObeyArrowCode(),
      new DenialUnlessCode(new CanBeMovedToCondition(0, true)),
      new WhileCode(new CanBeMovedToCondition(0, true)),
        new HopInDirectionCode(0, true),
        new ObeyArrowCode(),
      new WendCode(),
      new StopAnimatingCode(),
    ]);
  case 27: // Left Rush Hop Kick Cola
    return new Program([
      new RotateCode(1),
      new ObeyArrowCode(),
      new HopInDirectionCode(0, true),
      new KickInDirectionCode(0, true),
      new WhileCode(new CanBeMovedToCondition(0, true)),
        new HopInDirectionCode(0, true),
        new KickInDirectionCode(0, true),
        new ObeyArrowCode(),
      new WendCode(),
      new StopAnimatingCode(),
    ]);
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
      new MoveInDirectionCode(-1, false),
    ]);
  case 33: // Right Kick Cola
    return new Program([
      new KickInDirectionCode(-1),
    ]);
  case 34: // Right Hop Cola
    return new Program([
      new HopInDirectionCode(-1),
    ]);
  case 35: // Right Hop Kick Cola
    return new Program([
      new HopInDirectionCode(-1),
      new KickInDirectionCode(-1),
    ]);
  case 36: // Right Boom Cola
    return new Program([
      new MoveInDirectionCode(-1, false),
      new ExplodeInPlaceCode(),
    ]);
  case 37: // Right Boom Kick Cola
    return new Program([
      new BoomKickInDirectionCode(-1),
    ]);
  case 38: // Right Hop Boom Cola
    return new Program([
      new HopInDirectionCode(-1),
      new ExplodeInPlaceCode(),
    ]);
  case 39: // Right Hop Boom Kick Cola
    return new Program([
      new HopInDirectionCode(-1),
      new BoomKickInDirectionCode(-1),
    ]);
  case 48: // Right Rush Cola
    return new Program([
      new RotateCode(-1),
      new ObeyArrowCode(),
      new DenialUnlessCode(new CanBeMovedToCondition(0, true)),
      new WhileCode(new CanBeMovedToCondition(0, true)),
        new MoveInDirectionCode(0, true),
        new ObeyArrowCode(),
      new WendCode(),
      new StopAnimatingCode(),
    ]);
  case 49: // Right Rush Kick Cola
    return new Program([
      new RotateCode(-1),
      new ObeyArrowCode(),
      new DenialUnlessCode(new CanBeMovedToCondition(0, true)),
      new WhileCode(new CanBeMovedToCondition(0, true)),
        new MoveInDirectionCode(0, true),
        new ObeyArrowCode(),
      new WendCode(),
      new StopAnimatingCode(),
      new KickInDirectionCode(0),
    ]);
  case 50: // Right Rush Hop Cola
    return new Program([
      new RotateCode(-1),
      new ObeyArrowCode(),
      new DenialUnlessCode(new CanBeMovedToCondition(0, true)),
      new WhileCode(new CanBeMovedToCondition(0, true)),
        new HopInDirectionCode(0, true),
        new ObeyArrowCode(),
      new WendCode(),
      new StopAnimatingCode(),
    ]);
  case 51: // Right Rush Hop Kick Cola
    return new Program([
      new RotateCode(-1),
      new ObeyArrowCode(),
      new HopInDirectionCode(0, true),
      new KickInDirectionCode(0, true),
      new WhileCode(new CanBeMovedToCondition(0, true)),
        new HopInDirectionCode(0, true),
        new KickInDirectionCode(0, true),
        new ObeyArrowCode(),
      new WendCode(),
      new StopAnimatingCode(),
    ]);
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
