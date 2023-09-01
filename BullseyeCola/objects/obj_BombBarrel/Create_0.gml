
// Inherit the parent event
event_inherited();

on_explode = function() {
  // Destroy and chain explosion
  explode_nearby(x, y, true);
  destroy(self);
}

is_explosive = true;
