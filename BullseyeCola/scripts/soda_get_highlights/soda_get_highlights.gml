
// Returns an array in the form [x, y, sprite, x, y, sprite, ...],
// where x and y are screen coordinates (i.e. multiples of GRID_SIZE)
// and sprite is a valid sprite index.
function soda_get_highlights(soda_number) {
  switch (soda_number) {
  case 0: // Water
    return soda_generate_highlights(0, spr_FloorTileHighlight, 0, 1);
  case 1: // Kick Cola
    return soda_generate_highlights(0, spr_FloorTileKickHighlight, 1, 1);
  case 2: // Hop Cola
    return soda_generate_highlights(0, spr_FloorTileHighlight, 2, 1);
  case 3: // Hop Kick Cola
    return array_concat(
      soda_generate_highlights(0, spr_FloorTileHighlight, 2, 1),
      soda_generate_highlights(0, spr_FloorTileKickHighlight, 3, 1),
    );
  case 4: // Boom Cola
    return soda_generate_boom_highlights(0, 0);
  case 5: // Boom Kick Cola
    return soda_generate_highlights(0, spr_FloorTileBoomKickHighlight, 1, 1);
  case 6: // Hop Boom Cola
    return array_concat(
      soda_generate_highlights(0, spr_FloorTileHighlight, 2, 1),
      soda_generate_boom_highlights(0, 2),
    );
  case 7: // Hop Boom Kick Cola
    return array_concat(
      soda_generate_highlights(0, spr_FloorTileHighlight, 2, 1),
      soda_generate_highlights(0, spr_FloorTileBoomKickHighlight, 3, 1),
    );
  case 8: // Left Cola
    return soda_generate_highlights(1, spr_FloorTileHighlight, 1, 1);
  case 9: // Left Kick Cola
    return soda_generate_highlights(1, spr_FloorTileKickHighlight, 1, 1);
  case 10: // Left Hop Cola
    return soda_generate_highlights(1, spr_FloorTileHighlight, 2, 1);
  case 11: // Left Hop Kick Cola
    return array_concat(
      soda_generate_highlights(1, spr_FloorTileHighlight, 2, 1),
      soda_generate_highlights(1, spr_FloorTileKickHighlight, 3, 1),
    );
  case 12: // Left Boom Cola
    return array_concat(
      soda_generate_highlights(1, spr_FloorTileHighlight, 1, 1),
      soda_generate_boom_highlights(1, 1),
    );
  case 13: // Left Boom Kick Cola
    return soda_generate_highlights(1, spr_FloorTileBoomKickHighlight, 1, 1);
  case 14: // Left Hop Boom Cola
    return array_concat(
      soda_generate_highlights(1, spr_FloorTileHighlight, 2, 1),
      soda_generate_boom_highlights(1, 2),
    );
  case 15: // Left Hop Boom Kick Cola
    return array_concat(
      soda_generate_highlights(1, spr_FloorTileHighlight, 2, 1),
      soda_generate_highlights(1, spr_FloorTileBoomKickHighlight, 3, 1),
    );
  case 16: // Rush Cola
    return array_concat(
      soda_generate_highlights(0, spr_FloorTileHighlight, 1, 1),
      soda_generate_highlights(0, spr_FloorTileInfinityHighlight, 2, 1),
    );
  case 17: // Rush Kick Cola
    return array_concat(
      soda_generate_highlights(0, spr_FloorTileHighlight, 1, 1),
      soda_generate_highlights(0, spr_FloorTileInfinityHighlight, 2, 1),
      soda_generate_highlights(0, spr_FloorTileKickHighlight, 3, 1),
    );
  case 18: // Rush Hop Cola
    return array_concat(
      soda_generate_highlights(0, spr_FloorTileHighlight, 2, 1),
      soda_generate_highlights(0, spr_FloorTileInfinityHighlight, 4, 1),
    );
  case 19: // Rush Hop Kick Cola
    return array_concat(
      soda_generate_highlights(0, spr_FloorTileHighlight, 2, 1),
      soda_generate_highlights(0, spr_FloorTileKickHighlight, 3, 1),
      soda_generate_highlights(0, spr_FloorTileInfinityHighlight, 4, 1),
    );
  case 20: // Rush Boom Cola
    return array_concat(
      soda_generate_boom_highlights(0, 1),
      soda_generate_highlights(0, spr_FloorTileInfinityHighlight, 1, 1),
    );
  case 21: // Rush Boom Kick Cola
    return array_concat(
      soda_generate_highlights(0, spr_FloorTileHighlight, 1, 1),
      soda_generate_highlights(0, spr_FloorTileInfinityHighlight, 2, 1),
      soda_generate_highlights(0, spr_FloorTileBoomKickHighlight, 3, 1),
    );
  case 22: // Rush Hop Boom Cola
    return array_concat(
      soda_generate_boom_highlights(0, 2),
      soda_generate_highlights(0, spr_FloorTileInfinityHighlight, 2, 1),
    );
  case 23: // Rush Hop Boom Kick Cola
    return array_concat(
      soda_generate_highlights(0, spr_FloorTileHighlight, 2, 1),
      soda_generate_highlights(0, spr_FloorTileBoomKickHighlight, 3, 1),
      soda_generate_highlights(0, spr_FloorTileInfinityHighlight, 4, 1),
    );
  case 24: // Left Rush Cola
    return array_concat(
      soda_generate_highlights(1, spr_FloorTileHighlight, 1, 1),
      soda_generate_highlights(1, spr_FloorTileInfinityHighlight, 2, 1),
    );
  case 25: // Left Rush Kick Cola
    return array_concat(
      soda_generate_highlights(1, spr_FloorTileHighlight, 1, 1),
      soda_generate_highlights(1, spr_FloorTileInfinityHighlight, 2, 1),
      soda_generate_highlights(1, spr_FloorTileKickHighlight, 3, 1),
    );
  case 26: // Left Rush Hop Cola
    return array_concat(
      soda_generate_highlights(1, spr_FloorTileHighlight, 2, 1),
      soda_generate_highlights(1, spr_FloorTileInfinityHighlight, 4, 1),
    );
  case 27: // Left Rush Hop Kick Cola
    return array_concat(
      soda_generate_highlights(1, spr_FloorTileHighlight, 2, 1),
      soda_generate_highlights(1, spr_FloorTileKickHighlight, 3, 1),
      soda_generate_highlights(1, spr_FloorTileInfinityHighlight, 4, 1),
    );
  case 28: // Left Rush Boom Cola
    return array_concat(
      soda_generate_boom_highlights(1, 1),
      soda_generate_highlights(1, spr_FloorTileInfinityHighlight, 1, 1),
    );
  case 29: // Left Rush Boom Kick Cola
    return array_concat(
      soda_generate_highlights(1, spr_FloorTileHighlight, 1, 1),
      soda_generate_highlights(1, spr_FloorTileInfinityHighlight, 2, 1),
      soda_generate_highlights(1, spr_FloorTileBoomKickHighlight, 3, 1),
    );
  case 30: // Left Rush Hop Boom Cola
    return array_concat(
      soda_generate_boom_highlights(1, 2),
      soda_generate_highlights(1, spr_FloorTileInfinityHighlight, 2, 1),
    );
  case 31: // Left Rush Hop Boom Kick Cola
    return array_concat(
      soda_generate_highlights(1, spr_FloorTileHighlight, 2, 1),
      soda_generate_highlights(1, spr_FloorTileBoomKickHighlight, 3, 1),
      soda_generate_highlights(1, spr_FloorTileInfinityHighlight, 4, 1),
    );
  case 32: // Right Cola
    return soda_generate_highlights(-1, spr_FloorTileHighlight, 1, 1);
  case 33: // Right Kick Cola
    return soda_generate_highlights(-1, spr_FloorTileKickHighlight, 1, 1);
  case 34: // Right Hop Cola
    return soda_generate_highlights(-1, spr_FloorTileHighlight, 2, 1);
  case 35: // Right Hop Kick Cola
    return array_concat(
      soda_generate_highlights(-1, spr_FloorTileHighlight, 2, 1),
      soda_generate_highlights(-1, spr_FloorTileKickHighlight, 3, 1),
    );
  case 36: // Right Boom Cola
    return array_concat(
      soda_generate_highlights(-1, spr_FloorTileHighlight, 1, 1),
      soda_generate_boom_highlights(-1, 1),
    );
  case 37: // Right Boom Kick Cola
    return soda_generate_highlights(-1, spr_FloorTileBoomKickHighlight, 1, 1);
  case 38: // Right Hop Boom Cola
    return array_concat(
      soda_generate_highlights(-1, spr_FloorTileHighlight, 2, 1),
      soda_generate_boom_highlights(-1, 2),
    );
  case 39: // Right Hop Boom Kick Cola
    return array_concat(
      soda_generate_highlights(-1, spr_FloorTileHighlight, 2, 1),
      soda_generate_highlights(-1, spr_FloorTileBoomKickHighlight, 3, 1),
    );
  case 48: // Right Rush Cola
    return array_concat(
      soda_generate_highlights(-1, spr_FloorTileHighlight, 1, 1),
      soda_generate_highlights(-1, spr_FloorTileInfinityHighlight, 2, 1),
    );
  case 49: // Right Rush Kick Cola
    return array_concat(
      soda_generate_highlights(-1, spr_FloorTileHighlight, 1, 1),
      soda_generate_highlights(-1, spr_FloorTileInfinityHighlight, 2, 1),
      soda_generate_highlights(-1, spr_FloorTileKickHighlight, 3, 1),
    );
  case 50: // Right Rush Hop Cola
    return array_concat(
      soda_generate_highlights(-1, spr_FloorTileHighlight, 2, 1),
      soda_generate_highlights(-1, spr_FloorTileInfinityHighlight, 4, 1),
    );
  case 51: // Right Rush Hop Kick Cola
    return array_concat(
      soda_generate_highlights(-1, spr_FloorTileHighlight, 2, 1),
      soda_generate_highlights(-1, spr_FloorTileKickHighlight, 3, 1),
      soda_generate_highlights(-1, spr_FloorTileInfinityHighlight, 4, 1),
    );
  case 52: // Right Rush Boom Cola
    return array_concat(
      soda_generate_boom_highlights(-1, 1),
      soda_generate_highlights(-1, spr_FloorTileInfinityHighlight, 1, 1),
    );
  case 53: // Right Rush Boom Kick Cola
    return array_concat(
      soda_generate_highlights(-1, spr_FloorTileHighlight, 1, 1),
      soda_generate_highlights(-1, spr_FloorTileInfinityHighlight, 2, 1),
      soda_generate_highlights(-1, spr_FloorTileBoomKickHighlight, 3, 1),
    );
  case 54: // Right Rush Hop Boom Cola
    return array_concat(
      soda_generate_boom_highlights(-1, 2),
      soda_generate_highlights(-1, spr_FloorTileInfinityHighlight, 2, 1),
    );
  case 55: // Right Rush Hop Boom Kick Cola
    return array_concat(
      soda_generate_highlights(-1, spr_FloorTileHighlight, 2, 1),
      soda_generate_highlights(-1, spr_FloorTileBoomKickHighlight, 3, 1),
      soda_generate_highlights(-1, spr_FloorTileInfinityHighlight, 4, 1),
    );
  }
  return [];
}
