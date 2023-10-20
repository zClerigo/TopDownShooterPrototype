/// @description Insert description here
// You can write your code in this editor
if keyboard_check(ord("B")) {
    target_x = player_obj.x;
    target_y = player_obj.y;
    isBullRush = true;
}

if (isBullRush) {
    if (point_distance(x, y, target_x, target_y) > spd) {
	move_towards_point(target_x, target_y, spd);
    } else {
	x = target_x;
	y = target_y;
	speed = 0;
	isBullRush = false;
    }
}
//show_debug_message(target_x)