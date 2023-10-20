/// @description Insert description here
// You can write your code in this editor

  if (speed > 0){
  if (direction >= 90 && direction <= 270){sprite_index = zomb_walk_left_spr;}
  else {sprite_index = zomb_walk_right_spr;}
  } else {sprite_index = zomb_down_spr;}
  
  if (collision_line(x, y, player_obj.x, player_obj.y, wall_obj, 1, 0)) {
	see = false
} else {
	see = true
}

if (distance_to_object(player_obj) <= range && see == true && finished == true && attacked == false)
   {
	ready = true;
   }

if ready {
target_x = player_obj.x;
	target_y = player_obj.y;
	attacking = true;
	ready = false
}
   
if (attacking) {
   atimer --
   speed = 0
   attacking = false
   sprite_index = zomb_charge_spr;
}
   
if (atimer <= 0 ) {
/*direction = point_direction(x, y, target_x, target_y);
speed = 7;
if (x == target_x)  {direction = 1}*/
move_towards_point(target_x, target_y, 10);
if (x >= target_x - 5 && x <= target_x +  5){
	if (y >= target_y - y && y <= target_y +  5){
	speed = 0 }}
ltimer --
finished = false
}

if (ltimer <= 0) {
speed = 0
atimer = 60
ltimer = 50
attacked = true
}

if ltimer == 50  {
	finished = true;
	cdtimer--;
	}
	
if cdtimer <= 0 {cdtimer = 180; attacked = false;}