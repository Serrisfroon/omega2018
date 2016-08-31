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
    sfx_play(snd_explode1, x, y);
    //Take damage
    shielddown = 1;
    if(shielddown = 0)
        shielded = 0;
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
            obj_mod.sendping = 0;
        armor += shield;
        shield = 0;
    }
    global.damagetaken[global.mymid] += 2;
    global.walldamage += 2;

    //Create smoke at the collision
    smokecolor = make_color_rgb(255, random(255), 0);
    effect_create_above(ef_smoke, x-6+random(12), y-6+random(12), 0, smokecolor);
    
    //Update smoking
    smoke = floor(armor/(armor_maximum/10));
    
    obj_mod.viewpos = 4;
    
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
        player_defeated = true;
        event_perform(ev_other, ev_user2); 
    }
    obj_mod.refreshing = 0;
}
else
    
    if(obj_bulletcontrol.wallposition[floor(xprevious/32), floor((yprevious+vspeed)/32)] = true)
    {
        vspeed = -vspeed;
        y = yprevious;
        facedir = direction;
        sfx_play(snd_explode1, x, y);
        //Take damage

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
            armor += shield;
            shield = 0;
        }
        //Create smoke at the collision
        smokecolor = make_color_rgb(255, random(255), 0);
        effect_create_above(ef_smoke, x-6+random(12), y-6+random(12), 0, smokecolor);
        
        //Update smoking
        smoke = floor(armor/(armor_maximum/10));
        
        obj_mod.viewpos = 4;
        
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
            player_defeated = true;
            event_perform(ev_other, ev_user2);
        }
        obj_mod.refreshing = 0;

    }
