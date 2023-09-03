
function save_game() {
  var room_number = real(string_digits(room_get_name(room)));
  var saved_data = load_game();
  ini_open("cola.dat");
  ini_write_real("game", "level", max(saved_data, room_number));
  ini_close();
}

function load_game() {
  ini_open("cola.dat");
  var result = ini_read_real("game", "level", 0);
  ini_close();
  return result;
}
