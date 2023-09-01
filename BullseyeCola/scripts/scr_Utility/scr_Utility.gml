
function object_is_ancestor_fixed(obj, par) {
  return (obj == par) || object_is_ancestor(obj, par);
}