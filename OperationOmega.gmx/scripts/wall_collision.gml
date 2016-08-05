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
    if(beserk = 0)
    {
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

    }
    //Create smoke at the collision
    smokecolor = make_color_rgb(255, random(255), 0);
    effect_create_above(ef_smoke, x-6+random(12), y-6+random(12), 0, smokecolor);
    
    //Update smoking
    smoke = floor(armor/(maxarmor/10));
    
    obj_mod.viewpos = 4;
    
    //Check if your ship has been defeated
    if(armor <= 0 && beserk = 0)
    {
        //Take note of the player that defeated you
        defeatmid = 20;
        global.walldeaths += 1;
        //Make a defeat message
        if(global.ships > 1)
            message = global.name+" crashed and burned(into a wall).";
        else
            message = global.name+" was hilariously ELIMINATED by a wall.";
        if(global.shipselect != 2)
        {
            //Move to avoid another wall
            x = x+lengthdir_x(speed+2, direction-180);
            y = y+lengthdir_y(speed+2, direction-180); 
            //Destroy this object
            instance_destroy();
        }
        else
        {
            armor = 0;
            shield = 0;
            beserk = 1;
            energygain = 0.8;
            energy = 100;
            heat = 50;
            cooldown = 1;
            beserkeffect = instance_create(x, y, obj_beserkeffect);
            obj_mod.sendping = 0;
            alarm[11] = 240;
        }    
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
        if(beserk = 0)
        {
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
        }
        //Create smoke at the collision
        smokecolor = make_color_rgb(255, random(255), 0);
        effect_create_above(ef_smoke, x-6+random(12), y-6+random(12), 0, smokecolor);
        
        //Update smoking
        smoke = floor(armor/(maxarmor/10));
        
        obj_mod.viewpos = 4;
        
        //Check if your ship has been defeated
        if(armor <= 0 && beserk = 0)
        {
            //Take note of the player that defeated you
            defeatmid = 20;
            //Make a defeat message
            if(global.ships > 1)
                message = global.name+" crashed and burned(into a wall).";
            else
                message = global.name+" was hilariously ELIMINATED by a wall.";
            if(global.shipselect != 2)
            {
                //Move to avoid another wall
                x = x+lengthdir_x(speed+2, direction);
                y = y+lengthdir_y(speed+2, direction); 
                //Destroy this object
                instance_destroy();
            }
            else
            {
                armor = 0;
                shield = 0;
                beserk = 1;
                energygain = 0.8;
                energy = 100;
                heat = 50;
                cooldown = 1;
                obj_mod.sendping = 0;
                beserkeffect = instance_create(x, y, obj_beserkeffect);
                alarm[11] = 300;
            }    
        }
        obj_mod.refreshing = 0;

    }
