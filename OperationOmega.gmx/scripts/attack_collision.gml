//attack_collision(dmg, pene, threshold, shake, name)


//Script variables
var dmg, pene, thresh, shake, weaponname, drone_active;
dmg = argument0;
pene = argument1;
thresh = argument2;
shake = argument3;
weaponname = argument4;
drone_active = false;
if(invincible = 0.7)
{
    dmg = 0;
    pene = 0;
}
if(sprite_index = spr_goliath || sprite_index = spr_goliath_enemy)
    if(ship_ability_active_flag = true)
    {
        dmg *= 0.4;
        pene /= 2;
    }

sfx_play(snd_hit, x, y);
        
//Activate the limiter and set time until deactivation

shielddown = 1;
if(shield = 0)
    shielddown = 0;
threshold -= thresh;
alarm[9] = THRESHOLD_TIMEOUT;
if(threshold < 0.1)
 threshold = 0.1;

 
//Handle Paladin Drone stuff
if(mid = global.mymid)
{
    with(obj_paladindrone) 
    {
        if(mid = global.mymid)
        {
            var my_drone = id;
            drone_active = true;
        }
    }
}

if(drone_active = false)
{
    if(thresh = 0)
    {
        //Take damage
        armor -= pene;
        //Check if under shock effect
        if(ship_status_shocked = false)
            shield -= dmg;
        else
        {
            shield -= dmg/2;
            armor -= dmg/2;
        }
    }
    else
    {
        //Take damage
        armor -= pene*threshold;
        //Check if under shock effect
        if(ship_status_shocked = false)
            shield -= dmg*threshold;
        else
        {
            shield -= dmg*threshold/2;
            armor -= dmg*threshold/2;
        }
    }
}
else
{
    if(thresh = 0)
    {
        //Take damage
        shield -= pene;
        //Check if under shock effect
        if(ship_status_shocked = false)
            my_drone.shield -= dmg;
        else
        {
            my_drone.shield -= dmg/2;
            shield -= dmg/2;
        }
    }
    else
    {
        //Take damage
        shield -= pene*threshold;
        //Check if under shock effect
        if(ship_status_shocked = false)
            my_drone.shield -= dmg*threshold;
        else
        {
            my_drone.shield -= dmg*threshold/2;
            shield -= dmg*threshold/2;
        }
    }
    //Destroy the drone if its shield is used up
    if(my_drone.shield <= 0)
    {
        shield += my_drone.shield;
        with(my_drone)
            instance_destroy();
    }
}

//If there is no more shield, transfer damage to armor
if(shield < 0) 
{
    armor += shield;
    shield = 0;
    if(shielddown = 1)
        obj_mod.ping_send_timer = 0;
}

//If there is shield left, create effect
if(shield > 0)
{
    hurt = instance_create(0, 0, obj_hit);
    hurt.hitdir = point_direction(x, y, other.xprevious, other.yprevious);
    hurt.hurting = id;
}

    
//Create burning trail effect
if(pene > 0)
{
    effectdir[flame_smoke_trails] = point_direction(x, y, other.xprevious, other.yprevious);
    emit[flame_smoke_trails] = part_emitter_create(flame_smoke_system);
    part_emitter_region(flame_smoke_system, emit[flame_smoke_trails], x+lengthdir_x(8, effectdir[flame_smoke_trails]), x+lengthdir_x(8, effectdir[flame_smoke_trails]), y+lengthdir_y(8, effectdir[flame_smoke_trails]), y+lengthdir_y(8, effectdir[flame_smoke_trails]), ps_shape_ellipse, ps_distr_linear);
    part_emitter_stream(flame_smoke_system, emit[flame_smoke_trails], obj_partsystem.deployhit, 2);
    effectdir[flame_smoke_trails] =  direction-effectdir[flame_smoke_trails];
    alarm[7] = 60;
    flame_smoke_trails += 1;
}
    

//Shake the screen
obj_mod.screen_shake_intensity += shake;

//Destroy the attack
with(other) instance_destroy();

//Update smoking
smoke = floor(armor/(armor_maximum/10));
 
//Reset shield regen time
alarm[4] = regentime;

//Check if your ship has been defeated
if(armor <= 0)
{
    //Take note of the player that defeated you
    defeatmid = other.mid;
    //Make a defeat message
    if(global.ships > 1)
        random_message(global.othername[other.mid], global.name, weaponname);
    else
        message = global.othername[other.mid]+" ELIMINATED "+global.name+".("+weaponname+")";

    //Destroy this object
    event_perform(ev_other, ev_user2);
}
return 1;
