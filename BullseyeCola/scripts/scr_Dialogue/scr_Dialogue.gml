
function Dia(speaker_, audio_, text_) constructor {
  speaker = speaker_;
  audio = audio_; // Voice acting; currently unused parameter
  text = text_;

  static on_trigger = function() {}

}

function push_dia(dia) {
  array_push(ui_DialogueBox.dia, dia);
}

function push_epi(dia) {
  array_push(ui_EpilogueDialogueBox.dia, dia);
}

enum Mugshot {
  JERRY = 0,
  MAX = 1,
  EMPTY = 2,
}