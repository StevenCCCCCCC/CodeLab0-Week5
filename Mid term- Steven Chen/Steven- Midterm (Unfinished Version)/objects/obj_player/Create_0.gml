/// @description create the speed of player
// You can write your code in this editor

h_speed = 0;
v_speed = 0;
gravity_ = .5;
add_speed = 2.5;
jump_height = -16;
max_hspeed = 10;
friction_ = .1;
//ord"w" equals left arrow
/*keyboard_set_map(ord("A"), vk_left);
keyboard_set_map(ord("D"), vk_right);
keyboard_set_map(ord("W"), vk_up);
keyboard_set_map(ord("S"), vk_down);*/

depth = -2;

//bullet cooldown
bullet_colldown = room_speed/3;
alarm[0] = bullet_colldown;
