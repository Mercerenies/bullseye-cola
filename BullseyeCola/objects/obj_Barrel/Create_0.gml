
// Inherit the parent event
event_inherited();

on_explode = function() {
  // Destroy
  undo_stack_apply_change(new ObjectDestroyChange(self.id, x, y));
  destroyed = true;
  y -= 9999;
}
