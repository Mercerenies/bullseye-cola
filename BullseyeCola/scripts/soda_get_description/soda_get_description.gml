
function soda_get_description(soda_number) {
  switch (soda_number) {
  case 0:
    return "No effect";
  case 1:
    return "Kick a barrel in front of you";
  case 2:
    return "Hop two spaces forward";
  case 3:
    return "Hop, then kick a barrel";
  case 4:
    return "Explode in place, destroying weak nearby objects";
  case 5:
    return "Kick a barrel so hard it explodes on contact";
  case 6:
    return "Hop, then explode in place";
  case 7:
    return "Hop, then kick a barrel so hard it explodes";
  case 8:
    return "Slide forward and to the left once";
  case 9:
    return "Kick a barrel forward and to the left";
  case 10:
    return "Hop forward and to the left two spaces";
  case 11:
    return "Hop forward-left, then kick forward-left";
  case 12:
    return "Slide forward-left, then explode in place";
  case 13:
    return "Kick a barrel forward-left so hard it explodes";
  case 14:
    return "Hop forward-left, then explode in place";
  case 15:
    return "Hop forward-left, then kick a barrel forward-left so hard it explodes";
  case 16:
    return "Rush forward until you hit something";
  case 17:
    return "Rush forward until you hit something, then kick that thing";
  case 18:
    return "Bunny-hop forward until you can't go any further";
  case 19:
    return "Bunny-hop forward until you can't go any further, kicking a barrel each hop";
  case 20:
    return "Rush forward until you hit something, then explode in place";
  case 21:
    return "Rush forward forever, then kick a barrel so hard it explodes on contact";
  case 22:
    return "Bunny-hop forward forever, exploding each time you land";
  case 23:
    return "Bunny-hop forward forever, explode-kicking each time you land";
  case 24:
    return "Rush diagonally forward-left until you hit something";
  case 25:
    return "Rush forward-left until you hit something, then kick it forward-left";
  case 26:
    return "Bunny-hop forward-left until you can't go any further";
  case 27:
    return "Bunny-hop forward-left forever, kicking a barrel forward-left each hop";
  case 28:
    return "Rush forward-left until you hit something, then explode in place";
  case 29:
    return "Rush forward-left forever, then explode-kick forward-left";
  case 30:
    return "Bunny-hop forward-left forever, exploding each time you land";
  case 31:
    return "Bunny-hop forward-left forever, exploding-kicking forward-left each time";
  case 32:
    return "Slide forward and to the right once";
  case 33:
    return "Kick a barrel forward and to the right";
  case 34:
    return "Hop forward and to the right two spaces";
  case 35:
    return "Hop forward-right, then kick forward-right";
  case 36:
    return "Slide forward-right, then explode in place";
  case 37:
    return "Kick a barrel forward-right so hard it explodes";
  case 38:
    return "Hop forward-right, then explode in place";
  case 39:
    return "Hop forward-right, then kick a barrel forward-right so hard it explodes";
  case 48:
    return "Rush diagonally forward-right until you hit something";
  case 49:
    return "Rush forward-right until you hit something, then kick it forward-right";
  case 50:
    return "Bunny-hop forward-right until you can't go any further";
  case 51:
    return "Bunny-hop forward-right forever, kicking a barrel forward-right each hop";
  case 52:
    return "Rush forward-right until you hit something, then explode in place";
  case 53:
    return "Rush forward-right forever, then explode-kick forward-right";
  case 54:
    return "Bunny-hop forward-right forever, exploding each time you land";
  case 55:
    return "Bunny-hop forward-right forever, exploding-kicking forward-right each time";
  }
  return "An unknown chemical";
}
