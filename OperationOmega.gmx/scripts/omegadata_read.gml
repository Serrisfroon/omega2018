
var save;
save = ini_open("omegadata.sav");
global.myname = ini_read_string("Data", "name", "Name");
global.myipaddress = ini_read_string("Data", "ip", "192.168.0.1");
global.shipselect = ini_read_real("Data", "shipselect", 1);
global.primary = ini_read_real("Data", "primary", 1);
global.secondary[1] = ini_read_real("Data", "secondary1", 0);
global.secondary[2] = ini_read_real("Data", "secondary2", 0);
global.secondary[3] = ini_read_real("Data", "secondary3", 0);
global.secondary[4] = ini_read_real("Data", "secondary4", 0);
global.playerkills = ini_read_real("Data", "playerkills", 0);
global.playerdeaths = ini_read_real("Data", "playerdeaths", 0);
global.playermatchwin = ini_read_real("Data", "playermatchwin", 0);
global.playermatchloss = ini_read_real("Data", "playermatchloss", 0);
global.playerduelwin = ini_read_real("Data", "playerduelwin", 0);
global.playerduelloss = ini_read_real("Data", "playerduelloss", 0);
global.playerdodge = ini_read_real("Data", "playerdodge", 0);
global.musictoggle = ini_read_real("Data", "musictoggle", 0);
global.sfxtoggle = ini_read_real("Data", "sfxtoggle", 0);
global.firingmode = ini_read_real("Data", "firingmode", 0);
ini_close();

for(i = 1; i <=4; i++)
{
    global.secondary_lockon_required[i] = false;
    switch(global.secondary[i])
    {
        case 1:
            global.secondary_type[i] = 0;
            global.secondary_cost[i] = 25;
            global.secondary_stock[i] = 100;
            global.secondary_object[i] = obj_fusion_attack;
            global.secondary_name[i] = "Fusion";
            global.secondary_icon_image[i] = spr_fusion_icon;
        break;
        case 2:
            global.secondary_type[i] = 0;
            global.secondary_cost[i] = 25;
            global.secondary_stock[i] = 100;
            global.secondary_object[i] = obj_stardust_attack;
            global.secondary_name[i] = "Stardust";
            global.secondary_icon_image[i] = spr_stardust_icon;
        break;
        case 3:
            global.secondary_type[i] = 0;
            global.secondary_cost[i] = 40;
            global.secondary_stock[i] = 100;
            global.secondary_object[i] = obj_barrier_attack;
            global.secondary_name[i] = "Barrier";
            global.secondary_icon_image[i] = spr_barrier_icon;
        break;
        case 4:
            global.secondary_type[i] = 0;
            global.secondary_cost[i] = 30;
            global.secondary_stock[i] = 100; 
            global.secondary_object[i] = obj_formation_attack; 
            global.secondary_name[i] = "Formation";
            global.secondary_lockon_required[i] = true;   
            global.secondary_icon_image[i] = spr_formation_icon;
        break;
        case 5:
            global.secondary_type[i] = 0;
            global.secondary_cost[i] = 85;
            global.secondary_stock[i] = 100;
            global.secondary_object[i] = obj_beam_attack;
            global.secondary_name[i] = "Beam";
            global.secondary_icon_image[i] = spr_beam_icon;
        break;
        case 6:
            global.secondary_type[i] = 0;
            global.secondary_cost[i] = 15;
            global.secondary_stock[i] = 100;
            global.secondary_object[i] = obj_sparkline_attack;
            global.secondary_name[i] = "Sparkline";
            global.secondary_icon_image[i] = spr_sparkline_icon;
        break;
        case 7:
            global.secondary_type[i] = 0;
            global.secondary_cost[i] = 20;
            global.secondary_stock[i] = 100;
            global.secondary_object[i] = obj_burst_attack;
            global.secondary_name[i] = "Burst";
            global.secondary_icon_image[i] = spr_burst_icon;
        break;
        case 8:
            global.secondary_type[i] = 0;
            global.secondary_cost[i] = 25;
            global.secondary_stock[i] = 100;
            global.secondary_object[i] = obj_slash_attack;
            global.secondary_name[i] = "Slash";
            global.secondary_icon_image[i] = spr_slash_icon;
        break;
        case 9:
            global.secondary_type[i] = 0;
            global.secondary_cost[i] = 25;
            global.secondary_stock[i] = 100;
            global.secondary_object[i] = obj_horizon_attack;
            global.secondary_name[i] = "Horizon";
            global.secondary_lockon_required[i] = true;   
            global.secondary_icon_image[i] = spr_horizon_icon;
        break;
        case 10:
            global.secondary_type[i] = 0;
            global.secondary_cost[i] = 20;
            global.secondary_stock[i] = 100;
            global.secondary_object[i] = obj_spiral_attack;
            global.secondary_name[i] = "Spiral";
            global.secondary_icon_image[i] = spr_spiral_icon;
        break;
        case 11:
            global.secondary_type[i] = 0;
            global.secondary_cost[i] = 20;
            global.secondary_stock[i] = 100;
            global.secondary_object[i] = obj_whip_attack;
            global.secondary_name[i] = "Whip";
            global.secondary_icon_image[i] = spr_laser_icon;
        break;
        case 12:
            global.secondary_type[i] = 0;
            global.secondary_cost[i] = 30;
            global.secondary_stock[i] = 100;
            global.secondary_object[i] = obj_trail_attack;
            global.secondary_name[i] = "Trail";
            global.secondary_icon_image[i] = spr_trail_icon;
        break;
        case 13:
            global.secondary_type[i] = 0;
            global.secondary_cost[i] = 30;
            global.secondary_stock[i] = 100;
            global.secondary_object[i] = obj_serpent_attack;
            global.secondary_name[i] = "Serpent";
            global.secondary_icon_image[i] = spr_reflection_icon;
        break;
        case 14:
            global.secondary_type[i] = 0;
            global.secondary_cost[i] = 20;
            global.secondary_stock[i] = 100;
            global.secondary_object[i] = obj_storm_attack;
            global.secondary_name[i] = "Storm";
            global.secondary_icon_image[i] = spr_storm_icon;
        break;
        case 15:
            global.secondary_type[i] = 0;
            global.secondary_cost[i] = 20;
            global.secondary_stock[i] = 100;
            global.secondary_object[i] = obj_direct_attack;
            global.secondary_name[i] = "Direct";
            global.secondary_icon_image[i] = spr_trigger_icon;
        break;
        case 16:
            global.secondary_type[i] = 1;
            global.secondary_cost[i] = 1;
            global.secondary_stock[i] = 4;
            global.secondary_object[i] = obj_dualmissile_attack;
            global.secondary_name[i] = "Dual Missile";
            global.secondary_lockon_required[i] = true;   
            global.secondary_icon_image[i] = spr_dualmissile_icon;
        break;
        case 17:
            global.secondary_type[i] = 1;
            global.secondary_cost[i] = 1;
            global.secondary_stock[i] = 3;
            global.secondary_object[i] = obj_layermissile_attack;
            global.secondary_name[i] = "Layer Missile";
            global.secondary_icon_image[i] = spr_layermissile_icon;
        break;
        case 18:
            global.secondary_type[i] = 1;
            global.secondary_cost[i] = 1;
            global.secondary_stock[i] = 4;
            global.secondary_object[i] = obj_locustmissile_attack;    
            global.secondary_name[i] = "Locust Missile";
            global.secondary_lockon_required[i] = true;   
            global.secondary_icon_image[i] = spr_locustmissile_icon;
        break;
        case 19:
            global.secondary_type[i] = 1;
            global.secondary_cost[i] = 1;
            global.secondary_stock[i] = 4;
            global.secondary_object[i] = obj_tridentmissile_attack; 
            global.secondary_name[i] = "Trident Missile";   
            global.secondary_lockon_required[i] = true;   
            global.secondary_icon_image[i] = spr_tridentmissile_icon;
        break;
        case 20:
            global.secondary_type[i] = 1;
            global.secondary_cost[i] = 1;
            global.secondary_stock[i] = 4;
            global.secondary_object[i] = obj_shockmissile_attack;    
            global.secondary_name[i] = "Shock Missile";
            global.secondary_lockon_required[i] = true;   
            global.secondary_icon_image[i] = spr_shockmissile_icon;
        break;
        case 21:
            global.secondary_type[i] = 1;
            global.secondary_cost[i] = 1;
            global.secondary_stock[i] = 4;
            global.secondary_object[i] = obj_hermitmissile_attack;    
            global.secondary_name[i] = "Hermit Missile";
            global.secondary_icon_image[i] = spr_hermitmissile_icon;
        break;
        case 22:
            global.secondary_type[i] = 1;
            global.secondary_cost[i] = 1;
            global.secondary_stock[i] = 4;
            global.secondary_object[i] = obj_splitmissile_attack;  
            global.secondary_name[i] = "Split Missile";  
            global.secondary_icon_image[i] = spr_splitmissile_icon;
        break;
        case 23:
            global.secondary_type[i] = 1;
            global.secondary_cost[i] = 1;
            global.secondary_stock[i] = 4;
            global.secondary_object[i] = obj_strikemissile_attack;    
            global.secondary_name[i] = "Strike Missile";
            global.secondary_lockon_required[i] = true;   
            global.secondary_icon_image[i] = spr_strikemissile_icon;
        break;
        case 24:
            global.secondary_type[i] = 1;
            global.secondary_cost[i] = 1;
            global.secondary_stock[i] = 4;
            global.secondary_object[i] = obj_huntermine_attack;    
            global.secondary_name[i] = "Hunter Mine";
            global.secondary_icon_image[i] = spr_huntermine_icon;
        break;
        case 25:
            global.secondary_type[i] = 1;
            global.secondary_cost[i] = 1;
            global.secondary_stock[i] = 4;
            global.secondary_object[i] = obj_phantommine_attack;  
            global.secondary_name[i] = "Phantom Mine";  
            global.secondary_icon_image[i] = spr_phantommine_icon;
        break;
        case 26:
            global.secondary_type[i] = 1;
            global.secondary_cost[i] = 1;
            global.secondary_stock[i] = 4;
            global.secondary_object[i] = obj_hackermine_attack;   
            global.secondary_name[i] = "Hacker Mine"; 
            global.secondary_icon_image[i] = spr_hackermine_icon;
        break;
        case 27:
            global.secondary_type[i] = 1;
            global.secondary_cost[i] = 1;
            global.secondary_stock[i] = 4;
            global.secondary_object[i] = obj_clustermine_attack; 
            global.secondary_name[i] = "Cluster Mine";   
            global.secondary_icon_image[i] = spr_clustermine_icon;
        break;
        case 28:
            global.secondary_type[i] = 1;
            global.secondary_cost[i] = 1;
            global.secondary_stock[i] = 4;
            global.secondary_object[i] = obj_strikemine_attack; 
            global.secondary_name[i] = "Strike Mine";   
            global.secondary_icon_image[i] = spr_strikemine_icon;
        break;
        case 29:
            global.secondary_type[i] = 1;
            global.secondary_cost[i] = 1;
            global.secondary_stock[i] = 4;
            global.secondary_object[i] = obj_solus_attack;   
            global.secondary_name[i] = "Solus"; 
            global.secondary_icon_image[i] = spr_solus_icon;
        break;
        case 30:
            global.secondary_type[i] = 1;
            global.secondary_cost[i] = 1;
            global.secondary_stock[i] = 4;
            global.secondary_object[i] = obj_turret_attack; 
            global.secondary_name[i] = "Turret";   
            global.secondary_icon_image[i] = spr_turret_icon;
        break;
    }
}
