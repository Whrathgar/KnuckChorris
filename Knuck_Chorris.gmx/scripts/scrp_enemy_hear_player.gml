//Is player to close
//does enemy have line of sight?
if(!collision_line(x,y,obj_player_test.x,obj_player_test.y,obj_wall,false,true)) //if yes...
{
    //Get the distance to the player
    dist_to_player = point_distance(x,y,obj_player_test.x,obj_player_test.y);
    //check if enemy can see player
    if(dist_to_player < detection_rad_0) {skin.image_angle = point_direction(x,y,obj_player_test.x,obj_player_test.y)}; 
}
