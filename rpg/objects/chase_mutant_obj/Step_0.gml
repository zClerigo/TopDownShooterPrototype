/// @description Insert description here
// You can write direction = point_direction(x, y, player_obj.x, player_obj.y)


if (direction > 90 && direction < 270) {
	image_xscale = -1;
} else {
	image_xscale = 1;
}

if(instance_exists(player_obj)) {
	my_path = path_add();
	mp_grid_path(grid, my_path, x, y, player_obj.x, player_obj.y, true)
	path_start(my_path, p_speed, path_action_stop, true);
}

if (hp == 0){
instance_destroy()
}