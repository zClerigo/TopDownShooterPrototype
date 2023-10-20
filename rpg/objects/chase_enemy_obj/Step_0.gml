/// @description Insert description here
// You can write your code in this editor
direction = point_direction(x, y, player_obj.x, player_obj.y)


if (direction > 90 && direction < 270) {
	image_xscale = -1;
} else {
	image_xscale = 1;
}

if(instance_exists(player_obj)) {
	my_path = path_add();
	mp_grid_path(grid, my_path, x, y, player_obj.x, player_obj.y, true)
	path_start(my_path, 4, path_action_stop, true);
}

if (hp == 0){
instance_destroy()
}




//Check for collision
if (state == e_state.ready){
   var rad = sprite_width / 2;
   var slime = collision_circle(x, y, rad, chase_enemy_obj, false, true);

   //if another slime is found, increase scale and destroy the other one
   if (slime != noone){
     instance_change(chase_mutant_obj, true)
     with slime state = e_state.dead;
   }
}

//If state is dead, destroy instance
if (state == e_state.dead){
   instance_destroy();
}

