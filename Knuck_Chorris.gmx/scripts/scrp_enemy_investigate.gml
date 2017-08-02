///scd_enemy_investigate
//The reference to the grid
grid = obj_enemy_controller.enemy_grid;
//start following path to investigation point
mp_grid_add_instances(grid,obj_wall,false);
mp_grid_path(grid,path,x,y,obj_player_test.x,obj_player_test.y,true);
path_start(path,move_speed,0,false);
//stop the alarm if this is in progress
alarm[0] = -1;

