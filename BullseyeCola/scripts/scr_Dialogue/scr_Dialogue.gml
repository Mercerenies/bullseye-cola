
function Dia(speaker_, audio_, text_, expression_ = "neutral") constructor {
  speaker = speaker_;
  audio = audio_; // Voice acting; currently unused parameter
  text = text_;
  expression = expression_;
  
  switch (speaker) {
    case Mugshot.JERRY:
      sprite = spr_MugshotJerry;
      image = global.jerry_expressions[$ string_lower(expression)] ?? 0;
      break;
    case Mugshot.MAX:
      sprite = spr_MugshotMax;
      image = global.max_expressions[$ string_lower(expression)] ?? 0;
      break;
    default:
      sprite = spr_MugshotEmpty;
      image = 0;
      break;
  }

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

global.jerry_expressions = {
  neutral: 0,
};

global.max_expressions = {
  neutral: 0,
};