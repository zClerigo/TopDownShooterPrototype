

if (player_arms_obj.image_angle >= 90 and player_arms_obj.image_angle < 270) {h_direction = 1} else {h_direction = -1}
if (player_arms_obj.image_angle >= 0 and player_arms_obj.image_angle < 180) {v_direction = 1} else {v_direction = -1}

var grabCamera_Width = camera_get_view_width(view_camera[0]);
var grabCamera_Height = camera_get_view_height(view_camera[0]);
var grabCamera_X = camera_get_view_x(view_camera[0]);
var grabCamera_Y = camera_get_view_y(view_camera[0]);

if(instance_exists(target)){

move_towards_point(mouse_x, mouse_y, 0);
var xTo = player_obj.x + lengthdir_x(min(100, distance_to_point(mouse_x, mouse_y)), direction);
var yTo = player_obj.y + lengthdir_y(min(100, distance_to_point(mouse_x, mouse_y)), direction);
x += (xTo-x)
y += (yTo-y)

var cameraX = clamp(xTo - grabCamera_Width/2, 0, room_width - grabCamera_Width);
var cameraY = clamp(yTo - grabCamera_Height/2, 0, room_height - grabCamera_Height);

var smooth = .1;
camera_set_view_pos(view_camera[0], lerp(grabCamera_X, cameraX, smooth), lerp(grabCamera_Y, cameraY, smooth));


}

intensity = 7

if(shaking == true){
	//camera_set_view_pos(view_camera[0], lerp(grabCamera_X + intensity * h_direction, cameraX, smooth), lerp(grabCamera_Y + intensity * v_direction, cameraY, smooth))
	camera_set_view_pos(view_camera[0], lerp(grabCamera_X + player_obj.xx, cameraX, smooth), lerp(grabCamera_Y + player_obj.yy, cameraY, smooth))
	shake_timer -= 1
}

if (shake_timer <= 0)  {
	shaking = false;
	shake_timer = 3;
}

/*if(instance_exists(crosshairs_obj)){
show_debug_message(point_distance(crosshairs_obj.x, crosshairs_obj.y, direction_obj.x, direction_obj.y))
}*/