if(xprevious < 0)
    exit;
if(obj_bulletcontrol.wallposition[floor((xprevious+hspeed)/32), floor(yprevious/32)] = true)
{
    hspeed = -hspeed;
    x = xprevious;
    //Check if a vertical collision would be called as well
    if(obj_bulletcontrol.wallposition[floor(xprevious/32), floor((yprevious+vspeed)/32)] = true)
    {
        vspeed = -vspeed;
        y = yprevious;
    }
    facedir = direction;
    //Take damage
    shielddown = 1;
    if(shielddown = 0)
        shielded = 0;
    if(buster_push = false)
    {
        sfx_play(snd_explode1, x, y);
        //Check if under shock effect
        if(ship_status_shocked = false)
            shield -= 2;
        else
        {
            shield -= 1;
            armor -= 1;
        }
        
        //If there is no more shield, transfer damage to armor
        if(shield < 0) 
        {
            if(shielddown = 1)
                obj_mod.ping_send_timer = 0;
            armor += shield;
            shield = 0;
        }
    }
    else
    {
        sfx_play(snd_explode2, x, y);
        armor -= 30;
        buster_push = false;
        var pass_mid = mid;
        with(obj_buster_push)
            if(target_object = global.playership[pass_mid])
                instance_destroy();
    }

    //Create smoke at the collision
    create_burning(x-6+random(12), y-6+random(12))
    
    //Update smoking
    smoke = floor(armor/(armor_maximum/10));
    
    if(mid = global.mymid)
        screen_shake(10);
    
    //Check if your ship has been defeated
    if(armor <= 0)
    {
        //Take note of the player that defeated you
        defeatmid = 20;
        global.walldeaths += 1;
        //Make a defeat message
        if(global.ships > 1)
            message = global.name+" crashed and burned(into a wall).";
        else
            message = global.name+" was hilariously ELIMINATED by a wall.";
        //Move to avoid another wall
        x = x+lengthdir_x(speed+2, direction-180);
        y = y+lengthdir_y(speed+2, direction-180); 
        //Destroy this object
        event_perform(ev_other, ev_user2); 
    }
    obj_mod.update_packet_timer = 0;
}
else
    
    if(obj_bulletcontrol.wallposition[floor(xprevious/32), floor((yprevious+vspeed)/32)] = true)
    {
        vspeed = -vspeed;
        y = yprevious;
        facedir = direction;
        if(buster_push = false)
        {
            sfx_play(snd_explode1, x, y);
            //Check if under shock effect
            if(ship_status_shocked = false)
                shield -= 2;
            else
            {
                shield -= 1;
                armor -= 1;
            }
            
            //If there is no more shield, transfer damage to armor
            if(shield < 0) 
            {
                if(shielddown = 1)
                    obj_mod.ping_send_timer = 0;
                armor += shield;
                shield = 0;
            }
        }
        else
        {
            sfx_play(snd_explode2, x, y);
            armor -= 30;
            buster_push = false;
            var pass_mid = mid;
            with(obj_buster_push)
                if(target_object = global.playership[pass_mid])
                    instance_destroy();
        }
        //Create smoke at the collision
        create_burning(x-6+random(12), y-6+random(12));
        
        //Update smoking
        smoke = floor(armor/(armor_maximum/10));
        
        if(mid = global.mymid)
            screen_shake(10);
            
        //Check if your ship has been defeated
        if(armor <= 0)
        {
            //Take note of the player that defeated you
            defeatmid = 20;
            //Make a defeat message
            if(global.ships > 1)
                message = global.name+" crashed and burned(into a wall).";
            else
                message = global.name+" was hilariously ELIMINATED by a wall.";

            //Move to avoid another wall
            x = x+lengthdir_x(speed+2, direction);
            y = y+lengthdir_y(speed+2, direction); 
            //Destroy this object
            event_perform(ev_other, ev_user2);
        }
        obj_mod.update_packet_timer = 0;

    }
