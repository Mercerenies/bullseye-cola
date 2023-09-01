
// We want this to appear just behind all foreground objects.
var helper_highlights_depth = FOREGROUND_LAYER_DEPTH + 1;
instance_create_depth(0, 0, helper_highlights_depth, ui_HighlightDrawingManager);