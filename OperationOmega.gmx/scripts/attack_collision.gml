//attack_collision(dmg, pene, threshold, shake, name)


//Script variables
var dmg, pene, thresh, shak, weaponname;
dmg = argument0;
pene = argument1;
thresh = argument2;
shake = argument3;
weaponname = argument4;
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

//Check if there's a nearby paladin turret
var shielded, shielddown;
shielded = 1;
if(instance_exists(obj_turret))
    if(distance_to_object(instance_nearest(x, y, obj_turret)) < 400)
        shielded = 2;
        
//Activate the limiter and set time until deactivation

shielddown = 1;
if(shield = 0)
    shielddown = 0;
threshold -= thresh;
alarm[9] = 60;
if(threshold < 0.1)
 threshold = 0.1;

if(thresh = 0)
{
    //Take damage
    armor -= pene/shielded;
    //Check if under shock effect
    if(ship_status_shocked = false)
        shield -= dmg/shielded;
    else
    {
        shield -= dmg/2;
        armor -= dmg/2;
    }
    global.damagetaken[global.mymid] += (pene+dmg)/shielded;
    global.damagedealt[other.mid] += (pene+dmg)/shielded;
}
else
{
    //Take damage
    armor -= pene*threshold/shielded;
    //Check if under shock effect
    if(ship_status_shocked = false)
        shield -= dmg*threshold/shielded;
    else
    {
        shield -= dmg*threshold/2;
        armor -= dmg*threshold/2;
    }
    global.damagetaken[global.mymid] += (pene+dmg)*threshold/shielded;
    global.damagedealt[other.mid] += (pene+dmg)*threshold/shielded;
}


//If there is no more shield, transfer damage to armor
if(shield < 0) 
{
    armor += shield;
    shield = 0;
    if(shielddown = 1)
        obj_mod.sendping = 0;
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
obj_mod.viewpos += shake;

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
    instance_destroy();

}
return 1;
