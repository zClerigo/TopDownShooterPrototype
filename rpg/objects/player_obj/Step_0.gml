/// @description Insert description here
// You can write your code in this editor
//window_set_cursor(cr_cross);

key_left = keyboard_check(ord("A"))
key_right =keyboard_check(ord("D"))
key_up = keyboard_check(ord("W"))
key_down = keyboard_check(ord("S"))
reload_key = keyboard_check_pressed(ord("R"))
dash_key = keyboard_check_pressed(vk_shift)

move_x = key_right - key_left;
move_y = key_down - key_up;

if (move_x != false or move_y != false) {moving = true} else {moving = false}

m_direction = point_direction(0, 0, move_x, move_y);
x_speed = lengthdir_x(m_speed , m_direction) * abs(move_x);
y_speed = lengthdir_y(m_speed , m_direction) * abs(move_y);
if (key_left && place_free(x-cspeed, y) && dashing == false){x += x_speed;}
if (key_right && place_free(x+cspeed, y) && dashing == false){x += x_speed;}
if (key_up && place_free(x, y-cspeed) && dashing == false){y += y_speed}
if (key_down && place_free(x, y+cspeed) && dashing == false){y += y_speed}


if (dash_key && dashing == false && dash_cooling == false)  {
	dashing = true
}
if (dashing == true && moving == true) {
	audio_play_sound(dash_effect, 2, false)
	var when_to_dash = 0
	dash_x_speed = lengthdir_x(dash_speed , m_direction)
	dash_y_speed = lengthdir_y(dash_speed , m_direction)
	for (i = 50; i > 0; i --) {
	if (place_free(dash_x_speed + x, dash_y_speed + y)) {
		x += dash_x_speed
		y += dash_y_speed
		when_to_dash += 1
		if(when_to_dash == 10){
	var dash = instance_create_layer(x, y, "Instances", dash_effect_obj);
	dash.sprite_index = sprite_index;
	dash.image_index = image_index;
	when_to_dash = 0;
	
	}
		}
	}
	dashing = false
	dash_cooling = true
	
}

if (dashing == true && moving == false) {
	audio_play_sound(dash_effect, 2, false)
	var when_to_dash = 0
	dash_x_speed = lengthdir_x(dash_speed , pdirection)
	dash_y_speed = lengthdir_y(dash_speed , pdirection)
	for (i = 50; i > 0; i --) {
	if (place_free(dash_x_speed + x, dash_y_speed + y)){
	x += dash_x_speed
	y += dash_y_speed
	when_to_dash += 1
	if(when_to_dash == 10){
	var dash = instance_create_layer(x, y, "Instances", dash_effect_obj);
	dash.sprite_index = sprite_index;
	dash.image_index = image_index;
	when_to_dash = 0;
	
	}
	}
	}
	
	dashing = false
	dash_cooling = true
}


if (dash_cooling == true) {dash_ctimer --}

if (dash_ctimer <= 0){
	dash_cooling = false
	dash_ctimer = 120
}

pdirection = point_direction(player_obj.x, player_obj.y, mouse_x, mouse_y);
cd--;
if ( cd <= 0 && mouse_check_button(mb_left) && m_size > 0 && reloading == false && dashing == false && rifle == true) {
	cd = cd_value
	with (instance_create_layer(player_arms_obj.x *image_xscale, player_arms_obj.y, "Instances", bullet_obj)) {
		direction = player_obj.pdirection + random_range(-3, 3)
		image_angle = direction
		speed = 50;
	}
	camera_obj.shaking = true;
	m_size -= 1
	audio_play_sound(shoot, 1, false)
}

if (45 <= pdirection && pdirection < 135 && moving == false) {right = false; sprite_index = raine_big_back_sprite}
else if (45 <= pdirection && pdirection < 135 && moving == true) {right = false; sprite_index = raine_big_back_sprite_walking}
else if (135 <= pdirection && pdirection < 225 && moving == false) {right = false; sprite_index = raine_big_left_sprite}
else if (135 <= pdirection && pdirection < 225 && moving == true) {right = false; sprite_index = raine_big_left_sprite_walking}
else if (225 <= pdirection && pdirection < 315 && moving == false) {right = false; sprite_index = raine_big_front_sprite}
else if (225 <= pdirection && pdirection < 315 && moving == true) {right = false; sprite_index = raine_big_front_sprite_walking}
else {right = true}

if (right == true && moving == true) {sprite_index = raine_big_right_sprite_walking}
else if (right == true && moving == false) {sprite_index = raine_big_right_sprite}

if (reload_key && reloading == false && dashing == false) {
	reloading = true
}

if (reloading == true) {
	timer --
	
	if (audio_is_playing(reload) == false){
	audio_play_sound(reload, 2, false)
	}
}

if (m_size == 0){
 if(mouse_check_button_pressed(mb_left)) {reloading = true}
}

if (timer <= 0){
	m_size = 20
	reloading = false
	timer = 120
	
}

if (!instance_exists(crosshairs_obj)) {
 instance_create_layer(mouse_x, mouse_y, "Instances", crosshairs_obj);
}

crosshairs_obj.x = mouse_x
crosshairs_obj.y = mouse_y
crosshairs_obj.timer = 5;
//camera_obj.target = crosshairs;

xx = lengthdir_x(camera_obj.intensity, follow_obj.image_angle)
yy = lengthdir_y(camera_obj.intensity, follow_obj.image_angle)