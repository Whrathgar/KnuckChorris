//Is player within sight distance?
if(point_distance(x,y,obj_player_test.x,obj_player_test.y)<400)
{
    //does enemy have line of sight?
    if(!collision_line(x,y,obj_player_test.x,obj_player_test.y,obj_wall,false,true)) //if yes...
    {
        //set vision cone
        cone_left = skin.image_angle+sight_cone_left;
        if(cone_left > 359){cone_left = cone_left-359};
        cone_right = skin.image_angle+sight_cone_right;
        if(cone_right < 0){cone_right = 359+cone_right};
        //Get angle to player
        p_angle = point_direction(x,y,obj_player_test.x,obj_player_test.y);
        // Is the player in the cone?
        if(cone_right > cone_left)
        {
            if(p_angle <= cone_left or p_angle >= cone_right) {in_cone = true};
            else{ in_cone = false};
        }
        else
        {
            if(p_angle <= cone_left and p_angle >= cone_right) {in_cone = true};
            else{in_cone = false};
        }
        //Do stuff if in cone
        if(in_cone)
        {
            //Get the distance to the player
            dist_to_player = point_distance(x,y,obj_player_test.x,obj_player_test.y);
            //check if enemy can see player
            if(dist_to_player < detection_rad_1) {skin.image_angle = point_direction(x,y,obj_player_test.x,obj_player_test.y)}; 
            return true;
        }
        return false;        
    }
}
