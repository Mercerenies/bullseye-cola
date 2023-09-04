
global.is_restarting_room = false;

audio_play_sound(snd_BGM, 10, true);

global.voice = undefined;
global.boom = undefined;

room_goto_next();
