 //create_icon(sprite, slot_number);
var tile, slot_number;
tile = instance_create(x, y, obj_icon_option);
slot_number = argument1
tile.sprite_index = argument0;
tile.owner = id;
tile.selection_type = -1;
tile.selection_cost = -1;
tile.selection_stock = -1;
tile.selection_object = -1;   
tile.selection_name = "";
tile.selection_lockon_required = false;   
switch(tile.owner.object_index)
{
    case obj_chooseprimary:
        switch(tile.sprite_index)
        {
            case spr_needle_icon:
                tile.selection_name = "Needle";
                var icon_order = 1;
            break;
            case spr_sonic_icon:
                tile.selection_name = "Sonic";
                var icon_order = 2;
            break;
            case spr_wave_icon:
                tile.selection_name = "Wave";
                var icon_order = 3;
            break;
            case spr_flank_icon:
                tile.selection_name = "Seeker";
                var icon_order = 4;
            break;
            case spr_stasis_icon:
                tile.selection_name = "Stasis";
                var icon_order = 5;
            break;
            case spr_crossfire_icon:
                tile.selection_name = "Helix";
                var icon_order = 6;
            break;
            case spr_siphon_icon:
                tile.selection_name = "Siphon";
                var icon_order = 7;
            break;
            case spr_double_icon:
                tile.selection_name = "Double";
                var icon_order = 8;
            break;
            case spr_pierce_icon:
                tile.selection_name = "Pierce";
                var icon_order = 9;
            break;
            case spr_spread_icon:
                tile.selection_name = "Spread";
                var icon_order = 10;
            break;
        }
        tile.selection_type = 2;
        tile.giveselection = icon_order;
        tile.display = tile.giveselection-1;    
    break;
    case obj_choosesecondary:
        if(tile.owner.secondnumber = 4 && (tile.sprite_index = spr_chooseenergy_icon || tile.sprite_index = spr_choosedeploy_icon)) 
        {
            if(tile.sprite_index = spr_chooseenergy_icon)
            {
                var icon_order = 1;
                tile.giveselection = 51;
            }
            if(tile.sprite_index = spr_choosedeploy_icon)
            {
                var icon_order = 6;
                tile.giveselection = 52;
            }
            tile.display = tile.giveselection-50;              
        }
        else
            switch(tile.sprite_index)
            {
                case spr_fusion_icon:
                    var icon_order = 1;
                    tile.giveselection = 1;
                    tile.selection_type = 0;
                    tile.selection_cost = 25;
                    tile.selection_stock = 100;
                    tile.selection_object = obj_fusion_attack;
                    tile.selection_name = "Fusion";
                    tile.display = 0;
                break;
                case spr_stardust_icon:
                    var icon_order = 2;
                    tile.giveselection = 2;
                    tile.selection_type = 0;
                    tile.selection_cost = 25;
                    tile.selection_stock = 100;
                    tile.selection_object = obj_stardust_attack;
                    tile.selection_name = "Stardust";
                    tile.display = 1;
                break;
                case spr_barrier_icon:
                    var icon_order = 3;
                    tile.giveselection = 3;
                    tile.selection_type = 0;
                    tile.selection_cost = 40;
                    tile.selection_stock = 100;
                    tile.selection_object = obj_barrier_attack;
                    tile.selection_name = "Barrier";
                    tile.display = 2;
                break;
                case spr_formation_icon:
                    var icon_order = 4;
                    tile.giveselection = 4;
                    tile.selection_type = 0;
                    tile.selection_cost = 30;
                    tile.selection_stock = 100; 
                    tile.selection_object = obj_formation_attack;
                    tile.selection_name = "Formation"; 
                    tile.selection_lockon_required = true;   
                    tile.display = 3;
                break;
                case spr_beam_icon:
                    var icon_order = 5;
                    tile.giveselection = 5;
                    tile.selection_type = 0;
                    tile.selection_cost = 85;
                    tile.selection_stock = 100;
                    tile.selection_object = obj_beam_attack;
                    tile.selection_name = "Beam";
                    tile.display = 4;
                break;
                case spr_sparkline_icon:
                    var icon_order = 6;
                    tile.giveselection = 6;
                    tile.selection_type = 0;
                    tile.selection_cost = 15;
                    tile.selection_stock = 100;
                    tile.selection_object = obj_sparkline_attack;
                    tile.selection_name = "Sparkline";
                    tile.display = 5;
                break;
                case spr_burst_icon:
                    var icon_order = 7;
                    tile.giveselection = 7;
                    tile.selection_type = 0;
                    tile.selection_cost = 20;
                    tile.selection_stock = 100;
                    tile.selection_object = obj_burst_attack;
                    tile.selection_name = "Burst";
                    tile.display = 6;
                break;
                case spr_slash_icon:
                    var icon_order = 8;
                    tile.giveselection = 8;
                    tile.selection_type = 0;
                    tile.selection_cost = 25;
                    tile.selection_stock = 100;
                    tile.selection_object = obj_slash_attack;
                    tile.selection_name = "Slash";
                    tile.display = 7;
                break;
                case spr_horizon_icon:
                    var icon_order = 9;
                    tile.giveselection = 9;
                    tile.selection_type = 0;
                    tile.selection_cost = 25;
                    tile.selection_stock = 100;
                    tile.selection_object = obj_horizon_attack;
                    tile.selection_lockon_required = true;   
                    tile.selection_name = "Horizon";
                    tile.display = 8;
                break;
                case spr_spiral_icon:
                    var icon_order = 10;
                    tile.giveselection = 10;
                    tile.selection_type = 0;
                    tile.selection_cost = 20;
                    tile.selection_stock = 100;
                    tile.selection_object = obj_spiral_attack;
                    tile.selection_name = "Spiral";
                    tile.display = 9;
                break;
                case spr_laser_icon:
                    var icon_order = 11;
                    tile.giveselection = 11;
                    tile.selection_type = 0;
                    tile.selection_cost = 20;
                    tile.selection_stock = 100;
                    tile.selection_object = obj_whip_attack;
                    tile.selection_name = "Whip";
                    tile.display = 10;
                break;
                case spr_trail_icon:
                    var icon_order = 12;
                    tile.giveselection = 12;
                    tile.selection_type = 0;
                    tile.selection_cost = 30;
                    tile.selection_stock = 100;
                    tile.selection_object = obj_trail_attack;
                    tile.selection_name = "Trail";
                    tile.display = 11;
                break;
                case spr_reflection_icon:
                    var icon_order = 13;
                    tile.giveselection = 13;
                    tile.selection_type = 0;
                    tile.selection_cost = 30;
                    tile.selection_stock = 100;
                    tile.selection_object = obj_serpent_attack;
                    tile.selection_name = "Serpent";
                    tile.display = 12;
                break;
                case spr_storm_icon:
                    var icon_order = 14;
                    tile.giveselection = 14;
                    tile.selection_type = 0;
                    tile.selection_cost = 20;
                    tile.selection_stock = 100;
                    tile.selection_object = obj_storm_attack;
                    tile.selection_name = "Storm";
                    tile.display = 13;
                break;
                case spr_trigger_icon:
                    var icon_order = 15;
                    tile.giveselection = 15;
                    tile.selection_type = 0;
                    tile.selection_cost = 20;
                    tile.selection_stock = 100;
                    tile.selection_object = obj_direct_attack;
                    tile.selection_name = "Direct";
                    tile.display = 14;
                break;
                case spr_dualmissile_icon:
                    var icon_order = 1;
                    tile.giveselection = 16;
                    tile.selection_type = 1;
                    tile.selection_cost = 1;
                    tile.selection_stock = 4;
                    tile.selection_object = obj_dualmissile_attack;
                    tile.selection_name = "Dual Missile";
                    tile.selection_lockon_required = true;   
                    tile.display = 0;
                break;
                case spr_layermissile_icon:
                    var icon_order = 2;
                    tile.giveselection = 17;
                    tile.selection_type = 1;
                    tile.selection_cost = 1;
                    tile.selection_stock = 3;
                    tile.selection_object = obj_layermissile_attack;
                    tile.selection_name = "Layer Missile";
                    tile.display = 1;
                break;
                case spr_solgrenade_icon:
                    var icon_order = 2;
                    tile.giveselection = 31;
                    tile.selection_type = 1;
                    tile.selection_cost = 1;
                    tile.selection_stock = 4;
                    tile.selection_object = obj_solgrenade_attack;   
                    tile.selection_name = "Sol Grenade"; 
                    tile.display = 11;
                break;
                case spr_locustmissile_icon:
                    var icon_order = 3;
                    tile.giveselection = 18;
                    tile.selection_type = 1;
                    tile.selection_cost = 1;
                    tile.selection_stock = 4;
                    tile.selection_object = obj_locustmissile_attack;    
                    tile.selection_name = "Locust Missile";
                    tile.selection_lockon_required = true;   
                    tile.display = 8;
                break;
                case spr_tridentmissile_icon:
                    var icon_order = 4;
                    tile.giveselection = 19;
                    tile.selection_type = 1;
                    tile.selection_cost = 1;
                    tile.selection_stock = 4;
                    tile.selection_object = obj_tridentmissile_attack;    
                    tile.selection_name = "Trident Missile";
                    tile.selection_lockon_required = true;   
                    tile.display = 2;
                break;
                case spr_shockmissile_icon:
                    var icon_order = 5;
                    tile.giveselection = 20;
                    tile.selection_type = 1;
                    tile.selection_cost = 1;
                    tile.selection_stock = 3;
                    tile.selection_object = obj_shockmissile_attack;    
                    tile.selection_lockon_required = true;   
                    tile.selection_name = "Shock Missile";
                    tile.display = 9;
                break;
                case spr_hermitmissile_icon:
                    var icon_order = 6;
                    tile.giveselection = 21;
                    tile.selection_type = 1;
                    tile.selection_cost = 1;
                    tile.selection_stock = 4;
                    tile.selection_object = obj_hermitmissile_attack;    
                    tile.selection_name = "Hermit Missile";
                    tile.display = 13;
                break;
                case spr_lunagrenade_icon:
                    var icon_order = 6;
                    tile.giveselection = 32;
                    tile.selection_type = 1;
                    tile.selection_cost = 1;
                    tile.selection_stock = 4;
                    tile.selection_object = obj_lunagrenade_attack;    
                    tile.selection_name = "Luna Grenade";
                    tile.display = 13;
                break;
                case spr_splitmissile_icon:
                    var icon_order = 7;
                    tile.giveselection = 22;
                    tile.selection_type = 1;
                    tile.selection_cost = 1;
                    tile.selection_stock = 4;
                    tile.selection_object = obj_splitmissile_attack;   
                    tile.selection_name = "Split Missile"; 
                    tile.display = 3;
                break;
                case spr_strikemissile_icon:
                    var icon_order = 8;
                    tile.giveselection = 23;
                    tile.selection_type = 1;
                    tile.selection_cost = 1;
                    tile.selection_stock = 4;
                    tile.selection_object = obj_strikemissile_attack;    
                    tile.selection_name = "Strike Missile";
                    tile.selection_lockon_required = true;   
                    tile.display = 4;
                break;
                case spr_huntermine_icon:
                    var icon_order = 9;
                    tile.giveselection = 24;
                    tile.selection_type = 1;
                    tile.selection_cost = 1;
                    tile.selection_stock = 4;
                    tile.selection_object = obj_huntermine_attack;    
                    tile.selection_name = "Hunter Mine";
                    tile.display = 10;
                break;
                case spr_phantommine_icon:
                    var icon_order = 10;
                    tile.giveselection = 25;
                    tile.selection_type = 1;
                    tile.selection_cost = 1;
                    tile.selection_stock = 4;
                    tile.selection_object = obj_phantommine_attack;    
                    tile.selection_name = "Phantom Mine";
                    tile.display = 5;
                break;
                case spr_hackermine_icon:
                    var icon_order = 11;
                    tile.giveselection = 26;
                    tile.selection_type = 1;
                    tile.selection_cost = 1;
                    tile.selection_stock = 4;
                    tile.selection_object = obj_hackermine_attack;  
                    tile.selection_name = "Hacker Mine";  
                    tile.display = 7;
                break;
                case spr_clustermine_icon:
                    var icon_order = 12;
                    tile.giveselection = 27;
                    tile.selection_type = 1;
                    tile.selection_cost = 1;
                    tile.selection_stock = 2;
                    tile.selection_object = obj_clustermine_attack; 
                    tile.selection_name = "Cluster Mine";   
                    tile.display = 12;
                break;
                case spr_strikemine_icon:
                    var icon_order = 13;
                    tile.giveselection = 28;
                    tile.selection_type = 1;
                    tile.selection_cost = 1;
                    tile.selection_stock = 4;
                    tile.selection_object = obj_strikemine_attack;    
                    tile.selection_name = "Strike Mine";
                    tile.display = 14;
                break;
                case spr_solus_icon:
                    var icon_order = 14;
                    tile.giveselection = 29;
                    tile.selection_type = 1;
                    tile.selection_cost = 1;
                    tile.selection_stock = 2;
                    tile.selection_object = obj_solus_attack;    
                    tile.selection_name = "Solus";
                    tile.display = 6;
                break;
                case spr_turret_icon:
                    var icon_order = 15;
                    tile.giveselection = 30;
                    tile.selection_type = 1;
                    tile.selection_cost = 1;
                    tile.selection_stock = 2;
                    tile.selection_object = obj_turret_attack;   
                    tile.selection_name = "Turret"; 
                    tile.display = 11;
                break;
            }
    break;
    
}
//Set the initial movement of the tile
tile.actionspeed[0] = 4;                        //Every tile moves down at first
tile.actiondist[0] = 8+ceil(icon_order/5)*32;   //Move the tile down 8, and then 32 more for each row until it's in the right row
tile.vspeed = 4;                                //Set the vspeed
tile.alarm[0] = tile.actiondist[0]/4;           //Set the time until the second movement

//Calculate this tile's position in its row
var row_order = icon_order-floor(icon_order/5.1)*5;
    
//Set the secondary movement of the tile
tile.actionspeed[1] = 0;                                //Set the default speed
tile.actiondist[1] = 0;                                 //Set the default distance
//Move the tile left if its position in row is lower than the slot number
if(row_order < slot_number)
{
    tile.actionspeed[1] = -4;
    tile.actiondist[1] = 32*abs(row_order-slot_number);
}
//Move it right if its position is greater than the slot number
if(row_order > slot_number)
{
    tile.actionspeed[1] = 4;
    tile.actiondist[1] = 32*abs(row_order-slot_number);
}

