
event_inherited();

canPush = function(dir) {
  // This MUST always return false for par_Solid that is not
  // par_Pushable. It's only provided for consistency. To be
  // pushable, your object MUST inherit from par_Pushable.
  return false;
}