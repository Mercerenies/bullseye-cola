
function perform_undo() {
  undo_stack_undo();
  with (obj_PressurePlateTile) {
    snap_to_state();
  }
  with (obj_Door) {
    snap_to_state();
  }
}