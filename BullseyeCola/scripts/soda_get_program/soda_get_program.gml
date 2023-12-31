
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
      new CheckFallCode(),
    ]);
  case 3: // Hop Kick Cola
    return new Program([
      new HopInDirectionCode(0),
      new CheckFallCode(),
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
      new CheckFallCode(),
      new ExplodeInPlaceCode(),
    ]);
  case 7: // Hop Boom Kick Cola
    return new Program([
      new HopInDirectionCode(0),
      new CheckFallCode(),
      new BoomKickInDirectionCode(0),
    ]);
  case 8: // Left Cola
    return new Program([
      new PlaySoundCode(snd_Diagonal),
      new MoveInDirectionCode(1, false),
      new CheckFallCode(),
    ]);
  case 9: // Left Kick Cola
    return new Program([
      new KickInDirectionCode(1),
    ]);
  case 10: // Left Hop Cola
    return new Program([
      new HopInDirectionCode(1),
      new CheckFallCode(),
    ]);
  case 11: // Left Hop Kick Cola
    return new Program([
      new HopInDirectionCode(1),
      new CheckFallCode(),
      new KickInDirectionCode(1),
    ]);
  case 12: // Left Boom Cola
    return new Program([
      new PlaySoundCode(snd_Diagonal),
      new MoveInDirectionCode(1, false),
      new CheckFallCode(),
      new ExplodeInPlaceCode(),
    ]);
  case 13: // Left Boom Kick Cola
    return new Program([
      new BoomKickInDirectionCode(1),
    ]);
  case 14: // Left Hop Boom Cola
    return new Program([
      new HopInDirectionCode(1),
      new CheckFallCode(),
      new ExplodeInPlaceCode(),
    ]);
  case 15: // Left Hop Boom Kick Cola
    return new Program([
      new HopInDirectionCode(1),
      new CheckFallCode(),
      new BoomKickInDirectionCode(1),
    ]);
  case 16: // Rush Cola
    return new Program([
      new PlaySoundCode(snd_Rush),
      new ObeyArrowCode(),
      new DenialUnlessCode(new CanBeMovedToCondition(0, true)),
      new WhileCode(new CanBeMovedToCondition(0, true)),
        new MoveInDirectionCode(0, true),
        new ObeyArrowCode(),
      new WendCode(),
      new StopAnimatingCode(),
      new CheckFallCode(),
    ]);
  case 17: // Rush Kick Cola
    return new Program([
      new PlaySoundCode(snd_Rush),
      new ObeyArrowCode(),
      new DenialUnlessCode(new CanBeMovedToCondition(0, true)),
      new WhileCode(new CanBeMovedToCondition(0, true)),
        new MoveInDirectionCode(0, true),
        new ObeyArrowCode(),
      new WendCode(),
      new StopAnimatingCode(),
      new CheckFallCode(),
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
      new CheckFallCode(),
    ]);
  case 19: // Rush Hop Kick Cola
    return new Program([
      new ObeyArrowCode(),
      new HopInDirectionCode(0, true),
      new KickInDirectionCode(0, true),
      new WhileCode(new CanBeMovedToCondition(0, true)),
        new HopInDirectionCode(0, true),
        new CheckFallCode(),
        new KickInDirectionCode(0, true),
        new ObeyArrowCode(),
      new WendCode(),
      new StopAnimatingCode(),
      new CheckFallCode(),
    ]);
  case 20: // Rush Boom Cola
    return new Program([
      new PlaySoundCode(snd_Rush),
      new ObeyArrowCode(),
      new DenialUnlessCode(new CanBeMovedToCondition(0, true)),
      new WhileCode(new CanBeMovedToCondition(0, true)),
        new MoveInDirectionCode(0, true),
        new ObeyArrowCode(),
      new WendCode(),
      new StopAnimatingCode(),
      new CheckFallCode(),
      new ExplodeInPlaceCode(),
    ]);
  case 21: // Rush Boom Kick Cola
    return new Program([
      new PlaySoundCode(snd_Rush),
      new ObeyArrowCode(),
      new DenialUnlessCode(new CanBeMovedToCondition(0, true)),
      new WhileCode(new CanBeMovedToCondition(0, true)),
        new MoveInDirectionCode(0, true),
        new ObeyArrowCode(),
      new WendCode(),
      new StopAnimatingCode(),
      new CheckFallCode(),
      new BoomKickInDirectionCode(0),
    ]);
  case 22: // Rush Hop Boom Cola
    return new Program([
      new ObeyArrowCode(),
      new HopInDirectionCode(0, true),
      new ExplodeInPlaceCode(),
      new WhileCode(new CanBeMovedToCondition(0, true)),
        new HopInDirectionCode(0, true),
        new ExplodeInPlaceCode(),
        new ObeyArrowCode(),
      new WendCode(),
      new StopAnimatingCode(),
      new CheckFallCode(),
    ]);
  case 23: // Rush Hop Boom Kick Cola
    return new Program([
      new ObeyArrowCode(),
      new HopInDirectionCode(0, true),
      new BoomKickInDirectionCode(0),
      new WhileCode(new CanBeMovedToCondition(0, true)),
        new HopInDirectionCode(0, true),
        new CheckFallCode(),
        new BoomKickInDirectionCode(0),
        new ObeyArrowCode(),
      new WendCode(),
      new StopAnimatingCode(),
      new CheckFallCode(),
    ]);
  case 24: // Left Rush Cola
    return new Program([
      new PlaySoundCode(snd_Rush),
      new RotateCode(1),
      new ObeyArrowCode(),
      new DenialUnlessCode(new CanBeMovedToCondition(0, true)),
      new WhileCode(new CanBeMovedToCondition(0, true)),
        new MoveInDirectionCode(0, true),
        new ObeyArrowCode(),
      new WendCode(),
      new StopAnimatingCode(),
      new CheckFallCode(),
    ]);
  case 25: // Left Rush Kick Cola
    return new Program([
      new PlaySoundCode(snd_Rush),
      new RotateCode(1),
      new ObeyArrowCode(),
      new DenialUnlessCode(new CanBeMovedToCondition(0, true)),
      new WhileCode(new CanBeMovedToCondition(0, true)),
        new MoveInDirectionCode(0, true),
        new ObeyArrowCode(),
      new WendCode(),
      new StopAnimatingCode(),
      new CheckFallCode(),
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
        new CheckFallCode(),
        new KickInDirectionCode(0, true),
        new ObeyArrowCode(),
      new WendCode(),
      new StopAnimatingCode(),
      new CheckFallCode(),
    ]);
  case 28: // Left Rush Boom Cola
    return new Program([
      new PlaySoundCode(snd_Rush),
      new RotateCode(1),
      new ObeyArrowCode(),
      new DenialUnlessCode(new CanBeMovedToCondition(0, true)),
      new WhileCode(new CanBeMovedToCondition(0, true)),
        new MoveInDirectionCode(0, true),
        new ObeyArrowCode(),
      new WendCode(),
      new StopAnimatingCode(),
      new CheckFallCode(),
      new ExplodeInPlaceCode(),
    ]);
  case 29: // Left Rush Boom Kick Cola
    return new Program([
      new PlaySoundCode(snd_Rush),
      new RotateCode(1),
      new ObeyArrowCode(),
      new DenialUnlessCode(new CanBeMovedToCondition(0, true)),
      new WhileCode(new CanBeMovedToCondition(0, true)),
        new MoveInDirectionCode(0, true),
        new ObeyArrowCode(),
      new WendCode(),
      new StopAnimatingCode(),
      new CheckFallCode(),
      new BoomKickInDirectionCode(0),
    ]);
  case 30: // Left Rush Hop Boom Cola
    return new Program([
      new RotateCode(1),
      new ObeyArrowCode(),
      new HopInDirectionCode(0, true),
      new ExplodeInPlaceCode(),
      new WhileCode(new CanBeMovedToCondition(0, true)),
        new HopInDirectionCode(0, true),
        new ExplodeInPlaceCode(),
        new ObeyArrowCode(),
      new WendCode(),
      new StopAnimatingCode(),
      new CheckFallCode(),
    ]);
  case 31: // Left Rush Hop Boom Kick Cola
    return new Program([
      new RotateCode(1),
      new ObeyArrowCode(),
      new HopInDirectionCode(0, true),
      new BoomKickInDirectionCode(0),
      new WhileCode(new CanBeMovedToCondition(0, true)),
        new HopInDirectionCode(0, true),
        new CheckFallCode(),
        new BoomKickInDirectionCode(0),
        new ObeyArrowCode(),
      new WendCode(),
      new StopAnimatingCode(),
      new CheckFallCode(),
    ]);
  case 32: // Right Cola
    return new Program([
      new PlaySoundCode(snd_Diagonal),
      new MoveInDirectionCode(-1, false),
      new CheckFallCode(),
    ]);
  case 33: // Right Kick Cola
    return new Program([
      new KickInDirectionCode(-1),
    ]);
  case 34: // Right Hop Cola
    return new Program([
      new HopInDirectionCode(-1),
      new CheckFallCode(),
    ]);
  case 35: // Right Hop Kick Cola
    return new Program([
      new HopInDirectionCode(-1),
      new CheckFallCode(),
      new KickInDirectionCode(-1),
    ]);
  case 36: // Right Boom Cola
    return new Program([
      new PlaySoundCode(snd_Diagonal),
      new MoveInDirectionCode(-1, false),
      new CheckFallCode(),
      new ExplodeInPlaceCode(),
    ]);
  case 37: // Right Boom Kick Cola
    return new Program([
      new BoomKickInDirectionCode(-1),
    ]);
  case 38: // Right Hop Boom Cola
    return new Program([
      new HopInDirectionCode(-1),
      new CheckFallCode(),
      new ExplodeInPlaceCode(),
    ]);
  case 39: // Right Hop Boom Kick Cola
    return new Program([
      new HopInDirectionCode(-1),
      new CheckFallCode(),
      new BoomKickInDirectionCode(-1),
    ]);
  case 48: // Right Rush Cola
    return new Program([
      new PlaySoundCode(snd_Rush),
      new RotateCode(-1),
      new ObeyArrowCode(),
      new DenialUnlessCode(new CanBeMovedToCondition(0, true)),
      new WhileCode(new CanBeMovedToCondition(0, true)),
        new MoveInDirectionCode(0, true),
        new ObeyArrowCode(),
      new WendCode(),
      new StopAnimatingCode(),
      new CheckFallCode(),
    ]);
  case 49: // Right Rush Kick Cola
    return new Program([
      new PlaySoundCode(snd_Rush),
      new RotateCode(-1),
      new ObeyArrowCode(),
      new DenialUnlessCode(new CanBeMovedToCondition(0, true)),
      new WhileCode(new CanBeMovedToCondition(0, true)),
        new MoveInDirectionCode(0, true),
        new ObeyArrowCode(),
      new WendCode(),
      new StopAnimatingCode(),
      new CheckFallCode(),
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
      new CheckFallCode(),
    ]);
  case 51: // Right Rush Hop Kick Cola
    return new Program([
      new RotateCode(-1),
      new ObeyArrowCode(),
      new HopInDirectionCode(0, true),
      new KickInDirectionCode(0, true),
      new WhileCode(new CanBeMovedToCondition(0, true)),
        new HopInDirectionCode(0, true),
        new CheckFallCode(),
        new KickInDirectionCode(0, true),
        new ObeyArrowCode(),
      new WendCode(),
      new StopAnimatingCode(),
      new CheckFallCode(),
    ]);
  case 52: // Right Rush Boom Cola
    return new Program([
      new PlaySoundCode(snd_Rush),
      new RotateCode(-1),
      new ObeyArrowCode(),
      new DenialUnlessCode(new CanBeMovedToCondition(0, true)),
      new WhileCode(new CanBeMovedToCondition(0, true)),
        new MoveInDirectionCode(0, true),
        new ObeyArrowCode(),
      new WendCode(),
      new StopAnimatingCode(),
      new CheckFallCode(),
      new ExplodeInPlaceCode(),
    ]);
  case 53: // Right Rush Boom Kick Cola
    return new Program([
      new PlaySoundCode(snd_Rush),
      new RotateCode(-1),
      new ObeyArrowCode(),
      new DenialUnlessCode(new CanBeMovedToCondition(0, true)),
      new WhileCode(new CanBeMovedToCondition(0, true)),
        new MoveInDirectionCode(0, true),
        new ObeyArrowCode(),
      new WendCode(),
      new StopAnimatingCode(),
      new CheckFallCode(),
      new BoomKickInDirectionCode(0),
    ]);
  case 54: // Right Rush Hop Boom Cola
    return new Program([
      new RotateCode(-1),
      new ObeyArrowCode(),
      new HopInDirectionCode(0, true),
      new ExplodeInPlaceCode(),
      new WhileCode(new CanBeMovedToCondition(0, true)),
        new HopInDirectionCode(0, true),
        new ExplodeInPlaceCode(),
        new ObeyArrowCode(),
      new WendCode(),
      new StopAnimatingCode(),
      new CheckFallCode(),
    ]);
  case 55: // Right Rush Hop Boom Kick Cola
    return new Program([
      new RotateCode(-1),
      new ObeyArrowCode(),
      new HopInDirectionCode(0, true),
      new BoomKickInDirectionCode(0),
      new WhileCode(new CanBeMovedToCondition(0, true)),
        new HopInDirectionCode(0, true),
        new CheckFallCode(),
        new BoomKickInDirectionCode(0),
        new ObeyArrowCode(),
      new WendCode(),
      new StopAnimatingCode(),
      new CheckFallCode(),
    ]);
  }
  return new Program([]);
}
