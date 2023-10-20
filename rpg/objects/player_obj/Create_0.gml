/// @description Insert description here
// You can write your code in this editor
hp = 200
m_speed = 7
cspeed = m_speed + 2
cd_value = 7;
cd = 0;
m_size = 20
reloading = false
timer = 120
stimer = 5
dashing = false;
dash_speed = 4
dash_ctimer = 120;
dash_cooling = false
rifle = true
depth = 200;
instance_create_layer(x,y, "Instances", player_arms_obj);
instance_create_layer(x,y, "Instances", follow_obj);