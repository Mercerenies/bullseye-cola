
function MakeObjectExplosiveChange(object_id_, was_explosive_) : UndoableChange() constructor {
  object_id = object_id_;
  was_explosive = was_explosive_;

  static can_apply = function() {
    return !was_explosive;
  }

  static apply = function() {
    object_id.is_explosive = true;
  }

  static undo = function() {
    object_id.is_explosive = was_explosive;
  }

}
