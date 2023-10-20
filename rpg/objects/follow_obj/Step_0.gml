/// @description Insert description here
// You can write your code in this editor


/*if (instance_exists(crosshairs_obj)) {
	direction = point_direction(crosshairs_obj.x, crosshairs_obj.y, player_obj.x, player_obj.y)
}
speed = 0.5
*/
move_towards_point(mouse_x, mouse_y, 0);
var nxTo = player_obj.x - lengthdir_x(min(100, distance_to_point(mouse_x, mouse_y)), direction);
var nyTo = player_obj.y - lengthdir_y(min(100, distance_to_point(mouse_x, mouse_y)), direction);

x += (nxTo-x)
y += (nyTo-y)

image_angle =  point_direction(player_obj.x, player_obj.y, mouse_x, mouse_y) - 180;