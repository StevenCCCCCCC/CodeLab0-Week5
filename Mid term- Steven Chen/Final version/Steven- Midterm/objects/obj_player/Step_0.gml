/// @description Insert description here
// You can write your code in this editor

//if player presses left or right, let the character move.

//set a local variable to calculate three circumstance:1.right = 1 2. left = -1 3.dont move = 0
var hinput = keyboard_check(vk_right) - keyboard_check(vk_left);


if (hinput != 0){
   h_speed += hinput*add_speed;
   h_speed = clamp(h_speed, - max_hspeed, max_hspeed);
} else {
   h_speed = lerp(h_speed, 0, friction_);
}//let the character stop SMOOTHLY


/*if (keyboard_check(vk_right)){
   h_speed = 11;
} else if (keyboard_check(vk_left)){
   h_speed = -11;
} else {
   h_speed = 0;
}*/



//if the player pressed space, then he would jump
if (!place_meeting(x, y+1, obj_solid)){
   v_speed += gravity_;
} else if (keyboard_check_pressed(vk_up)){//this effect can also used on enemies...
   v_speed = jump_height;
}

//if player encounters the wall, he would not be able to move
if place_meeting(x + h_speed, y, obj_solid){
   while !place_meeting(x + sign(h_speed), y, obj_solid){
         x += sign (h_speed);
   }
   h_speed = 0;
}

x += h_speed;

if place_meeting(x, y + v_speed, obj_solid){
   while !place_meeting(x, y + sign(v_speed), obj_solid){
         y += sign (v_speed);
   }
   v_speed = 0;
}

y += v_speed;

if (global.player_score <= 0){
  audio_play_sound(sound_ghostbehit,1,0);
  room_goto(room_Ghost);
}
