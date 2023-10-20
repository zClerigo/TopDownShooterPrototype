/// @description Insert description here
// You can write your code in this editor
if (see == true){
draw_sprite_ext(shoot_enemy_sprite, -1, x, y, 1, 1, point_direction(x,y, player_obj.x, player_obj.y), c_white, 1)
}

if (see == false){
	draw_sprite_ext(shoot_enemy_sprite, -1, x, y, 1, 1, 0, c_white, 1)
}
if (hit == true){
draw_sprite_ext(shoot_enemy_sprite, -1, x, y, 1, 1, 0, make_colour_hsv(255, 255, 255), 1)
htimer--
}

if (htimer <= 0) {hit = false; htimer = 10}