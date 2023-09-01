
// Inherit the parent event
event_inherited();

anim_period = irandom_range(250, 280);
soda_number = 0;
tick = irandom(anim_period);
animation_orientation = choose(-1, 1);

// Pick-up actions

can_move_onto = function(dir, is_special_move) {
  return true;
}

on_move_onto = function(dir, is_special_move) {
  return new SodaObjectCollectAction(self, x, y);
}
