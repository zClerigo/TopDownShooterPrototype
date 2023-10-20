/// @description Insert description here
// You can write your code in this editor
/*if (target == noone){
	target = instance_find(player_obj, 0);
	
	return;
}
position_next_x = x + random_range(-96, 96)

if (collision_line(x, y, position_next_x, y, wall_obj, false, true)) {
	position_next_x = x
}

position_next_y = y + random_range(-96, 96)

if (collision_line(x, y, x, position_next_y, wall_obj, false, true)) {
	position_next_y = y
}

x = lerp(x, position_next_x, 0.02);
y = lerp(y, position_next_y, 0.02);
*/

if (hp <= 0) {instance_destroy();}

if (collision_line(x, y, player_obj.x, player_obj.y, wall_obj, 1, 0)) {
	see = false
} else {
	see = true
}

if (see  == true) {
	if (stimer = 30) {
	with (instance_create_layer(x, y, "Instances", enemy_bullet_obj)) {
		direction = point_direction(x,y, player_obj.x, player_obj.y) + random_range(-5, 5)
		speed = 5;
	}
	}
	stimer --
	if (stimer <= 0) {stimer = 30}
	
}