
event_inherited();

on_explode = function() {
  var occupant = instance_position(x, y, par_PhysicalObject);
  destroy(self);
  if (instance_exists(occupant)) {
    push_action(new ObjectFallAction(occupant, occupant.x, occupant.y));
  }
}