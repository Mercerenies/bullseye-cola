
function Dia(speaker_, audio_, text_, expression_ = "neutral") constructor {
  speaker = speaker_;
  audio = audio_;
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

  static on_trigger = function() {
    if (!is_undefined(audio)) {
      if ((!is_undefined(global.voice)) && audio_is_playing(global.voice)) {
        audio_stop_sound(global.voice);
      }
      global.voice = audio_play_sound(audio, 10, false);
    }
  }

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