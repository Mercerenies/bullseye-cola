
function place_soda_can(soda_can) {
  with (soda_can) {
    do {
      x = random_range(UI_LEFT_THRESHOLD, UI_RIGHT_THRESHOLD);
      y = random_range(UI_TOP_THRESHOLD, UI_BOTTOM_THRESHOLD);
    } until (!place_meeting(x, y, ui_UISodaCan));
  }
}

function collect_soda_can(soda_number) {
  // TODO Undo
  var soda_can = instance_create_layer(-200, -200, "Instances_UI", ui_UISodaCan);
  place_soda_can(soda_can);
  return soda_can;
}