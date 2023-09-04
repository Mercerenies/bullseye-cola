/// @desc Spawn soda bubbles

instance_create_layer(irandom_range(0, room_width), irandom_range(room_height div 4, room_height), sodajoy_layer, pretty_SodaJoyBubble);
alarm[1] = irandom_range(10, 15);
