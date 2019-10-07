/// @description draw the gun
var dir = point_direction(x, y, mouse_x, mouse_y);
var flip = 1;
if mouse_x < x {
   flip = -1;
}
//if mouse goes to another side, then th eimage of the guun would flip

// draw the player
draw_sprite_ext(spr_player, 0, x, y, flip ,1, 0, image_blend, image_alpha);
// draw the gun

draw_sprite_ext(spr_gun, 0, x, y, 1 ,flip, dir, image_blend, image_alpha);