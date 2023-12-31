
function soda_get_tagline(soda) {
  return soda_get_name(soda) + " - " + soda_get_description(soda);
}

function soda_get_name(soda) {
  if (soda == 0) {
    return "Water";
  }
  var prefix = "";
  if (soda & Soda.LEFT) {
    prefix += "Left ";
  }
  if (soda & Soda.RIGHT) {
    prefix += "Right ";
  }
  if (soda & Soda.RUSH) {
    prefix += "Rush ";
  }
  if (soda & Soda.HOP) {
    prefix += "Hop ";
  }
  if (soda & Soda.BOOM) {
    prefix += "Boom ";
  }
  if (soda & Soda.KICK) {
    prefix += "Kick ";
  }
  return prefix + "Cola";
}

function place_soda_can(soda_can) {
  with (soda_can) {
    do {
      x = random_range(UI_LEFT_THRESHOLD + 32, UI_RIGHT_THRESHOLD);
      y = random_range(UI_TOP_THRESHOLD, UI_BOTTOM_THRESHOLD);
    } until (!place_meeting(x, y, ui_UISodaCan));
  }
}

function collect_soda_can(soda_number, log_undo=true) {
  var soda_can = instance_create_layer(-200, -200, "Instances_UI", ui_UISodaCan);
  soda_can.soda_number = soda_number;
  place_soda_can(soda_can);
  if (log_undo) {
    undo_stack_apply_change(new SodaCanCreateChange(soda_number, soda_can.x, soda_can.y));
  }
  return soda_can;
}

function mix_sodas(soda1, soda2) {
  var new_soda = soda1 | soda2;
  // Left and right are mutually exclusive.
  if ((new_soda & Soda.LEFT) && (new_soda & Soda.RIGHT)) {
    new_soda ^= Soda.LEFT | Soda.RIGHT;
  }
  return new_soda;
}

function soda_is_subset(soda1, soda2) {
  return (soda1 & soda2) == soda1;
}
