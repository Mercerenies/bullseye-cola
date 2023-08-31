
function soda_get_name(soda) {
  if (soda == 0) {
    return "Water";
  }
  var prefix = "";
  if (soda & Soda.SPIN_LEFT) {
    prefix += "Left ";
  }
  if (soda & Soda.SPIN_RIGHT) {
    prefix += "Right ";
  }
  if (soda & Soda.BOOM) {
    prefix += "Boom ";
  }
  if (soda & Soda.HOP) {
    prefix += "Hop ";
  }
  if (soda & Soda.RUSH) {
    prefix += "Rush ";
  }
  if (soda & Soda.KICK) {
    prefix += "Kick ";
  }
  return prefix + "Cola";
}