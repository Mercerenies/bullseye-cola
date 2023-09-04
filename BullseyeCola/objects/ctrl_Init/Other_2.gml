
global.is_restarting_room = false;

audio_play_sound(snd_BGM, 10, true);

global.voice = undefined;
global.boom = undefined;

instance_create_layer(0, 0, layer, ctrl_SodaJoySpawner);

room_goto_next();
