var _level_number = -1;
if (room == rm_LevelSelect) {
    _level_number = 0;
} else if (string_starts_with(room_get_name(room), "rm_Level")) {
    var _level_str = string_delete(room_get_name(room), 1, string_length("rm_Level"));
    _level_number = real(_level_str);
}

show_debug_message($"Current level number: {_level_number}");

if (_level_number >= 0)
    instance_create_depth(0, 0, 0, pretty_SodaJoy, { level_number: _level_number });
