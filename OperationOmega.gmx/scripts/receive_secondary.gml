//Receive the packet information for a secondary attack

//Read the secondary used
var receive_current_secondary = readbyte(0);

//Set variables depending on the secondary used
//receive_current_secondary_type is the type of weapon(0 = energy, 1 = heavy)
//receive_current_secondary_object is the spawning object of the attack
//receive_current_secondary_lockon_required holds whether or not the weapon needs a lock-on
switch(receive_current_secondary)
{
    case 1:
        var receive_current_secondary_type = 0;
        var receive_current_secondary_object = obj_fusion_attack;
        var receive_current_secondary_lockon_required = false;
    break;
    case 2:
        var receive_current_secondary_type = 0;
        var receive_current_secondary_object = obj_stardust_attack;
        var receive_current_secondary_lockon_required = false;
    break;
    case 3:
        var receive_current_secondary_type = 0;
        var receive_current_secondary_object = obj_barrier_attack;
        var receive_current_secondary_lockon_required = false;
    break;
    case 4:
        var receive_current_secondary_type = 0;
        var receive_current_secondary_object = obj_formation_attack;
        var receive_current_secondary_lockon_required = true;
    break;
    case 5:
        var receive_current_secondary_type = 0;
        var receive_current_secondary_object = obj_beam_attack;
        var receive_current_secondary_lockon_required = false;
    break;
    case 6:
        var receive_current_secondary_type = 0;
        var receive_current_secondary_object = obj_sparkline_attack;
        var receive_current_secondary_lockon_required = false;
    break;
    case 7:
        var receive_current_secondary_type = 0;
        var receive_current_secondary_object = obj_burst_attack;
        var receive_current_secondary_lockon_required = false;
    break;
    case 8:
        var receive_current_secondary_type = 0;
        var receive_current_secondary_object = obj_slash_attack;
        var receive_current_secondary_lockon_required = false;
    break;
    case 9:
        var receive_current_secondary_type = 0;
        var receive_current_secondary_object = obj_horizon_attack;
        var receive_current_secondary_lockon_required = true;
    break;
    case 10:
        var receive_current_secondary_type = 0;
        var receive_current_secondary_object = obj_spiral_attack;
        var receive_current_secondary_lockon_required = false;
    break;
    case 11:
        var receive_current_secondary_type = 0;
        var receive_current_secondary_object = obj_whip_attack;
        var receive_current_secondary_lockon_required = false;
    break;
    case 12:
        var receive_current_secondary_type = 0;
        var receive_current_secondary_object = obj_trail_attack;
        var receive_current_secondary_lockon_required = false;
    break;
    case 13:
        var receive_current_secondary_type = 0;
        var receive_current_secondary_object = obj_serpent_attack;
        var receive_current_secondary_lockon_required = false;
    break;
    case 14:
        var receive_current_secondary_type = 0;
        var receive_current_secondary_object = obj_storm_attack;
        var receive_current_secondary_lockon_required = false;
    break;
    case 15:
        var receive_current_secondary_type = 0;
        var receive_current_secondary_object = obj_direct_attack;
        var receive_current_secondary_lockon_required = false;
    break;
    case 16:
        var receive_current_secondary_type = 1;
        var receive_current_secondary_object = obj_dualmissile_attack;
        var receive_current_secondary_lockon_required = true;
    break;
    case 17:
        var receive_current_secondary_type = 1;
        var receive_current_secondary_object = obj_layermissile_attack;
        var receive_current_secondary_lockon_required = false;
    break;
    case 18:
        var receive_current_secondary_type = 1;
        var receive_current_secondary_object = obj_locustmissile_attack;
        var receive_current_secondary_lockon_required = true;
    break;
    case 19:
        var receive_current_secondary_type = 1;
        var receive_current_secondary_object = obj_tridentmissile_attack;
        var receive_current_secondary_lockon_required = true;
    break;
    case 20:
        var receive_current_secondary_type = 1;
        var receive_current_secondary_object = obj_shockmissile_attack;
        var receive_current_secondary_lockon_required = true;
    break;
    case 21:
        var receive_current_secondary_type = 1;
        var receive_current_secondary_object = obj_hermitmissile_attack;
        var receive_current_secondary_lockon_required = true;
    break;
    case 22:
        var receive_current_secondary_type = 1;
        var receive_current_secondary_object = obj_splitmissile_attack;
        var receive_current_secondary_lockon_required = false;
    break;
    case 23:
        var receive_current_secondary_type = 1;
        var receive_current_secondary_object = obj_strikemissile_attack;
        var receive_current_secondary_lockon_required = true;
    break;
    case 24:
        var receive_current_secondary_type = 1;
        var receive_current_secondary_object = obj_huntermine_attack;
        var receive_current_secondary_lockon_required = false;
    break;
    case 25:
        var receive_current_secondary_type = 1;
        var receive_current_secondary_object = obj_phantommine_attack;
        var receive_current_secondary_lockon_required = false;
    break;
    case 26:
        var receive_current_secondary_type = 1;
        var receive_current_secondary_object = obj_hackermine_attack;
        var receive_current_secondary_lockon_required = false;
    break;
    case 27:
        var receive_current_secondary_type = 1;
        var receive_current_secondary_object = obj_clustermine_attack;
        var receive_current_secondary_lockon_required = false;
    break;
    case 28:
        var receive_current_secondary_type = 1;
        var receive_current_secondary_object = obj_strikemine_attack;
        var receive_current_secondary_lockon_required = false;
    break;
    case 29:
        var receive_current_secondary_type = 1;
        var receive_current_secondary_object = obj_solus_attack;
        var receive_current_secondary_lockon_required = false;
    break;
    case 30:
        var receive_current_secondary_type = 1;
        var receive_current_secondary_object = obj_turret_attack;
        var receive_current_secondary_lockon_required = false;
    break;
    case 31:
        var receive_current_secondary_type = 1;
        var receive_current_secondary_object = obj_solgrenade_attack;
        var receive_current_secondary_lockon_required = false;
    break;
    case 32:
        var receive_current_secondary_type = 1;
        var receive_current_secondary_object = obj_lunagrenade_attack;
        var receive_current_secondary_lockon_required = false;
    break;
    case 33:
        var receive_current_secondary_type = 1;
        var receive_current_secondary_object = obj_flashbomb_attack;
        var receive_current_secondary_lockon_required = false;
    break;
    case 34:
        var receive_current_secondary_type = 1;
        var receive_current_secondary_object = obj_buster_attack;
        var receive_current_secondary_lockon_required = false;
    break;
    case 35:
        var receive_current_secondary_type = 1;
        var receive_current_secondary_object = obj_paladindrone_attack;
        var receive_current_secondary_lockon_required = false;
    break;
}
var receive_current_secondary_cost = 0;                 //Set the cost of the weapon to 0 because it shouldn't matter
var receive_current_secondary_stock = 99;               //Set the stock to 99 for the same reason
var receive_current_target_x = readshort(0);            //Read the x coordinate of the target location
var receive_current_target_y = readshort(0);            //Read the y coordinate as well
var receive_current_target_object = readbyte(0);        //Read the mid of the targeted player
var receive_amplified = readbyte(0);                    //Read the amplified flag

//Pass on the held variables to the appropriate player
with(global.playership[dummy])
{
    current_secondary = receive_current_secondary;
    current_secondary_type = receive_current_secondary_type;
    current_secondary_object = receive_current_secondary_object;
    current_secondary_lockon_required = receive_current_secondary_lockon_required;
    current_secondary_cost = 0;                                                             //Set the cost of the weapon to 0 because it shouldn't matter
    current_secondary_stock = 0;                                                           //Set the stock to 99 for the same reason
    current_target_x = receive_current_target_x;
    current_target_y = receive_current_target_y;
    current_target_object = receive_current_target_object;
    amplified = receive_amplified;
    
    //Have the player perform the secondary attack
    event_perform(ev_other, ev_user0);
}
