/// @description Spawn soda icons

instance_create_layer(irandom_range(0, room_width), room_height + 64, sodajoy_layer, pretty_SodaJoyIcon, { image_index: array_get_random(sodajoy_icons) });
alarm[0] = irandom_range(20, 30);
