/// @description Insert description here
// You can write your code in this editor
x = player_obj.x
y = player_obj.y

image_angle =  point_direction(player_obj.x, player_obj.y, mouse_x, mouse_y);

if (image_angle > 90 and image_angle < 270) {image_yscale = -1} else {image_yscale = 1}

if (player_obj.sprite_index = raine_big_back_sprite or  player_obj.sprite_index = raine_big_back_sprite_walking) {depth = 201} else  {depth = 199}