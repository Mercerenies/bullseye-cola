
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
  case 6:
    break;
  case 7:
    break;
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
  return [];
}
