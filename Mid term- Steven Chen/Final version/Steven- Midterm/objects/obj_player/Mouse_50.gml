/// @description create a bullet
if alarm[0] <= 0{
   
   instance_create_layer(x, y, "Instances", obj_bullet);
   alarm[0] = bullet_colldown;
   audio_play_sound(sound_shoot,1,0);
}