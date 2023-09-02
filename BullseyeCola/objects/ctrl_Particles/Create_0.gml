
player_fire = part_type_create();
part_type_shape(player_fire, pt_shape_pixel);
part_type_size(player_fire, 1, 1, 0, 0);
part_type_scale(player_fire, 1, 1);
part_type_speed(player_fire, 1, 2.5, 0, 0);
part_type_direction(player_fire, 70, 110, 0, 5);
part_type_gravity(player_fire, 0, 0);
part_type_orientation(player_fire, 0, 0, 0, 0, false);
part_type_colour3(player_fire, $2727a1, $7dced4, $8ddee4);
part_type_alpha3(player_fire, 1.0, 0.7, 0.0);
part_type_life(player_fire, 10, 20);

cracked_block = part_type_create();
part_type_sprite(cracked_block, spr_CrackedParticle, false, false, false);
part_type_size(cracked_block, 0.5, 1, 0, 0);
part_type_scale(cracked_block, 1, 1);
part_type_speed(cracked_block, 1.5, 3.5, 0, 0);
part_type_direction(cracked_block, 60, 120, 0, 0);
part_type_gravity(cracked_block, 0.5, 270);
part_type_orientation(cracked_block, 0, 360, 0, 30, false);
part_type_colour1(cracked_block, c_white);
part_type_alpha1(cracked_block, 0.5);
part_type_life(cracked_block, 10, 20);
