sodajoy_layer = layer_create(layer_get_depth("Background") - 10, "SodaJoy");
bg_layer = layer_create(layer_get_depth("Background") - 5, "SodaJoy");

var _bg_sprite = bg_SodaJoy1;
var _color = merge_color(c_orange, c_white, 0.75);
if (level_number > 27) {
    _bg_sprite = bg_SodaJoy4;
    _color = merge_color(c_fuchsia, c_white, 0.75);
} else if (level_number > 18) {
    _bg_sprite = bg_SodaJoy3;
    _color = merge_color(c_aqua, c_white, 0.75);
} else if (level_number > 9) {
    _bg_sprite = bg_SodaJoy2;
    _color = merge_color(c_lime, c_white, 0.75);
}
instance_create_layer(0, 0, bg_layer, pretty_SodaJoyBackground, { sprite_index: _bg_sprite });

with (obj_BasicWall) {
    image_blend = _color;
}
with (obj_BasicFloorTile) {
    image_blend = _color;
}
with (obj_ArrowFloorTile) {
    image_blend = _color;
}
with (obj_CrackedFloorTile) {
    image_blend = _color;
}
with (obj_StarFloorTile) {
    image_blend = _color;
}
with (obj_PressurePlateTile) {
    image_blend = _color;
}
with (obj_SpikedFloorTile) {
    image_blend = _color;
}

part_type_colour1(ctrl_Particles.cracked_block, _color);

sodajoy_icons = [0];
if (level_number >= 1) {
    if (level_number > 27)
        array_push(sodajoy_icons, 7);
    
    with (obj_SodaCan) {
        switch (soda_number) {
            case Soda.HOP:
                if (!array_contains(other.sodajoy_icons, 1))
                    array_push(other.sodajoy_icons, 1);
                break;
            
            case Soda.LEFT:
                if (!array_contains(other.sodajoy_icons, 2))
                    array_push(other.sodajoy_icons, 2);
                break;
            
            case Soda.RIGHT:
                if (!array_contains(other.sodajoy_icons, 3))
                    array_push(other.sodajoy_icons, 3);
                break;
            
            case Soda.KICK:
                if (!array_contains(other.sodajoy_icons, 4))
                    array_push(other.sodajoy_icons, 4);
                break;
            
            case Soda.BOOM:
                if (!array_contains(other.sodajoy_icons, 5))
                    array_push(other.sodajoy_icons, 5);
                break;
            
            case Soda.RUSH:
                if (!array_contains(other.sodajoy_icons, 6))
                    array_push(other.sodajoy_icons, 6);
                break;
        }
    }
}

repeat (20) {
    instance_create_layer(irandom_range(0, room_width), irandom_range(0, room_height), sodajoy_layer, pretty_SodaJoyIcon, { image_index: array_get_random(sodajoy_icons) });
}
repeat (10) {
    instance_create_layer(irandom_range(0, room_width), irandom_range(0, room_height), sodajoy_layer, pretty_SodaJoyBubble);
}

alarm[0] = irandom_range(20, 30);
alarm[1] = irandom_range(10, 15);
