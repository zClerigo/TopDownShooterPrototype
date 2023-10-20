/// @description Insert description here
// You can write your code in this editor
globalvar grid;
grid = mp_grid_create(0, 0, room_width, room_height, room_width/100, room_height/40);
mp_grid_add_instances(grid, wall_obj, false);