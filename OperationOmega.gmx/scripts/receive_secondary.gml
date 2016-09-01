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
}
var receive_current_secondary_cost = 0;                 //Set the cost of the weapon to 0 because it shouldn't matter
var receive_current_secondary_stock = 99;               //Set the stock to 99 for the same reason
var receive_current_target_x = readshort(0);            //Read the x coordinate of the target location
var receive_current_target_y = readshort(0);            //Read the y coordinate as well
var receive_current_target_object = readbyte(0);        //Read the mid of the targeted player
var receive_amplified = readbyte(0);                    //Read the amplified flag

//Pass on the held variables to the appropriate player
with(global.playership[mid])
{
    current_secondary = receive_current_secondary;
    current_secondary_type = receive_current_secondary_type;
    current_secondary_object = receive_current_secondary_object;
    current_secondary_lockon_required = receive_current_secondary_lockon_required;
    current_secondary_cost = 0;                                                             //Set the cost of the weapon to 0 because it shouldn't matter
    current_secondary_stock = 99;                                                           //Set the stock to 99 for the same reason
    current_target_x = receive_current_target_x;
    current_target_y = receive_current_target_y;
    current_target_object = receive_current_target_object;
    amplified = receive_amplified;
    
    //Have the player perform the secondary attack
    event_perform(ev_other, ev_user0);
}


/*
//for use when checking for a secondary packet
       shottype=readbyte(0);
        //Use the correct secondary
        switch(shottype)
        {
        
         //Dual Missile
         case 1:
              shootx = readshort(0);
              shooty = readshort(0);
              shootdir = readbyte(0)*1.5;
              targeted = readbyte(0);
              amplified = readbyte(0);
              //Match up target and set object to be created
              if(targeted = global.mymid)
              {
               lockon = obj_ship;
               align = obj_dualmissile_enemy;
              }
              else
              {
               lockon = global.playership[targeted];
               if(global.team[dummy] != global.team[global.mymid])
                align = obj_dualmissile_enemy;
               else
                align = obj_dualmissile; 
              }
              //Create the missiles
              missile = instance_create(shootx, shooty, align);
              missile.startdir = shootdir;
              missile.direction = shootdir-90;
              missile.speed = 4;
              missile.target = lockon;
              missile.mid = dummy;
              missile.amplified = amplified;
              missile=instance_create(shootx, shooty, align);
              missile.startdir = shootdir;
              missile.direction = shootdir+90;
              missile.speed = 4;
              missile.target = lockon;
              missile.mid = dummy;
              missile.amplified = amplified;
              if(global.master = true)
               client_sendall(0, dummy)
         break;
         
         //Fusion
         case 2:
              global.playership[dummy].alarm[0] = 1;
              global.playership[dummy].hitx = readshort(0);
              global.playership[dummy].hity = readshort(0);
              global.playership[dummy].mid = dummy;
              if(readbyte(0) = 0)
               global.playership[dummy].fusions = 5;
              else
               global.playership[dummy].fusions = 7;              
              if(global.master = true)
               client_sendall(0, dummy);
         break;
         
         //Stardust
         case 3:
                if(global.sfxtoggle = 0)
                {
                    sfx_play(snd_swifttele, global.playership[dummy].x, global.playership[dummy].y);
                }
              global.playership[dummy].alarm[1] = 1;
              global.playership[dummy].stardust = 25;
              global.playership[dummy].hitx = readshort(0);
              global.playership[dummy].hity = readshort(0);
              global.playership[dummy].mid = dummy;
              if(readbyte(0) = 0)
               global.playership[dummy].staramp = 0;
              else
               global.playership[dummy].staramp = 1;
              if(global.master = true)
               client_sendall(0, dummy);
         break;
        
        //Hunter Mine
        case 4:
             shootx = readshort(0);
             shooty = readshort(0);
             if(global.team[dummy] != global.team[global.mymid])
              mine = instance_create(shootx, shooty, obj_huntermine_enemy);
             else
              mine = instance_create(shootx, shooty, obj_huntermine);
             mine.mid = dummy;
             mine.amplified = readbyte(0);
             if(global.master = true)
               client_sendall(0, dummy);
        break;
        
        //Layer Missile
        case 6:
             shootx = readshort(0);
             shooty = readshort(0);
             shootdir = readbyte(0)*1.5;
             sfx_play(snd_missile, shootx, shooty);
             if(global.team[dummy] != global.team[global.mymid])
              align = obj_layermissile_enemy;
             else
              align = obj_layermissile;
             missile = instance_create(shootx, shooty, align);
             missile.direction = shootdir;
             missile.speed = 12;
             missile.mid = dummy;
             missile.amplified = readbyte(0);
             if(global.master = true)
               client_sendall(0, dummy);
        break;
        
        //Barrier
        case 7:
             barrierx = readshort(0);
             barriery = readshort(0);
             if(global.team[dummy] != global.team[global.mymid])
             {
                with(obj_barrier_enemy)
                    if(mid = obj_mod.dummy)
                        instance_destroy();
                barrier = instance_create(barrierx, barriery, obj_barrier_enemy);    
             }         
             else
             {
                with(obj_barrier)
                    if(mid = obj_mod.dummy)
                        instance_destroy();
                barrier = instance_create(barrierx, barriery, obj_barrier);
             }
             barrier.direction = readbyte(0)*1.5;
             barrier.amplified = readbyte(0);
             barrier.mid = dummy;
             if(global.master = true)
               client_sendall(0, dummy);
        break;
        
        //Locust Missile
        case 8:
             shootx = readshort(0);
             shooty = readshort(0);
             shootdir = readbyte(0)*1.5;
             targeted = readbyte(0);
             nextm = 0;
             //Match up target and set object to be created
             if(targeted = global.mymid)
             {
              lockon = obj_ship;
              align = obj_locustmissile_enemy;
             }
             else
             {
              lockon = global.playership[targeted];
              if(global.team[dummy] != global.team[global.mymid])
               align = obj_locustmissile_enemy;
              else
               align = obj_locustmissile; 
             }
             if(readbyte(0) = 0)
              repeat(6)
              {
               //Create the missile and give it its properties
               missile = instance_create(shootx, shooty, align);
               missile.direction = shootdir-90+(nextm*60);
               missile.target = lockon;
               missile.mid = dummy;
               nextm += 1;
              }
             else
              repeat(8)
              {
               //Create the missile and give it its properties
               missile = instance_create(shootx, shooty, align);
               missile.direction = shootdir-22.5+(nextm*45);
               missile.target = lockon;
               missile.mid = dummy;
               nextm += 1;
              }                    
             if(global.master = true)
               client_sendall(0, dummy);
        break;
        
        //Phantom Mine
        case 9:
             shootx = readshort(0);
             shooty = readshort(0);
             if(global.team[dummy] != global.team[global.mymid])
              mine = instance_create(shootx, shooty, obj_phantommine_enemy);
             else
              mine = instance_create(shootx, shooty, obj_phantommine);
             mine.mid = dummy;
             mine.amplified = readbyte(0);
             if(global.master = true)
               client_sendall(0, dummy);
        break;
        
        //Solus
        case 10:
             shootx = readshort(0);
             shooty = readshort(0)
             if(global.team[dummy] != global.team[global.mymid])
              solus = instance_create(shootx, shooty, obj_solus_enemy);
             else
              solus = instance_create(shootx, shooty, obj_solus);
             solus.mid = dummy;
             solus.amplified = readbyte(0);
             if(global.master = true)
               client_sendall(0, dummy);
        break;
        
        //Formation
        case 11:
             shootx = readshort(0);
             shooty = readshort(0);
             targeted = readbyte(0);
             thisx = readshort(0);
             thisy = readshort(0);
             //Match up target and set object to be created
             if(targeted = global.mymid)
             {
              lockon = obj_ship;
              align = obj_formationa_enemy;
             }
             else
             {
              lockon = global.playership[targeted];
              if(global.team[dummy] != global.team[global.mymid])
               align = obj_formationa_enemy;
              else
               align = obj_formationa; 
             }
             form = instance_create(shootx, shooty, align);
             form.target = lockon;
             form.direction = point_direction(shootx, shooty, thisx, thisy);
             form.targetx = thisx;
             form.targety = thisy;
             form.mid = dummy;
             form.amplified = readbyte(0);
             if(global.master = true)
               client_sendall(0, dummy);
        break;
        
        //Beam
        case 12:
             shootx = readshort(0);
             shooty = readshort(0);
             shootdir = readbyte(0)*1.5;
             //Create the correct object
             if(global.team[dummy] != global.team[global.mymid])
              beam = instance_create(shootx, shooty, obj_beam_enemy);
             else
              beam = instance_create(shootx, shooty, obj_beam);
             beam.mid = dummy;
             beam.direction = shootdir;
             if(global.master = true)
               client_sendall(0,dummy);
        break;
        
        //Sparkline
        case 13:
             nodecount = readbyte(0);
             shootx = readshort(0);
             shooty = readshort(0);
             thisx = readshort(0);
             thisy = readshort(0);
             amplified = readbyte(0);
             //Set the correct object to be made
             if(global.team[dummy] != global.team[global.mymid])
              align = obj_sparkline_enemy;
             else
              align = obj_sparkline;
             
             //Check if this is the start of a new set
             if(nodecount = 1)
             {
              if(instance_exists(node[dummy]) && node[dummy] != -1)
               with(node[dummy]) instance_destroy();
              if(instance_exists(node2[dummy]) && node2[dummy] != -1)
               with(node2[dummy]) instance_destroy();
              if(instance_exists(node3[dummy]) && node3[dummy] != -1)
               with(node3[dummy]) instance_destroy();
             }
             if(amplified = 1)
             {
              //Check if lag has cause past nodes to be destroyed
              if(nodecount = 3)
              {
               if(!instance_exists(node2[dummy]))
                break;
              }
              //Check if three nodes already exist and destroy them if they do
              if(instance_exists(node3[dummy]) && node3[dummy] != -1)
              {
               with(node[dummy]) instance_destroy();
               with(node2[dummy]) instance_destroy();
               with(node3[dummy]) instance_destroy();
              }
              //Check if existing nodes are attacking
              if(instance_exists(node2[dummy]) && node2[dummy] != -1)
               if(node2[dummy].stage = 1)
               with(node2[dummy]) instance_destroy();
              if(instance_exists(node[dummy]) && node[dummy] != -1)
               if(node[dummy].stage = 1)
                with(node[dummy]) instance_destroy();
             }
             else
             {
              //Check if lag has cause past nodes to be destroyed
              if(nodecount = 2)
              {
               if(!instance_exists(node[dummy]))
                break;
              }
              //Check if two nodes already exist and destroy them if they do
              if(instance_exists(node2[dummy]) && node2[dummy] != -1)
              {
               with(node[dummy]) instance_destroy();
               with(node2[dummy]) instance_destroy();
              }
              //Check if existing nodes are attacking
              if(instance_exists(node2[dummy]) && node2[dummy] != -1)
               if(node2[dummy].stage = 1)
               with(node2[dummy]) instance_destroy();
              if(instance_exists(node[dummy]) && node[dummy] != -1)
               if(node[dummy].stage = 1)
                with(node[dummy]) instance_destroy();
             }
              
             //Create an infinite loop to section off this code
             while(true)
             {
              //Destroy existing nodes if this node is fired too far away
              if(instance_exists(node[dummy]) && node[dummy] != -1)
               if(point_distance(thisx, thisy, node[dummy].x, node[dummy].y) > 680)
               {
                with(node[dummy]) instance_destroy();
                if(instance_exists(node2[dummy]) && node2[dummy] != -1)
                 with(node2[dummy]) instance_destroy();
               }
              if(instance_exists(node2[dummy]) && node2[dummy] != -1)
               if(point_distance(thisx, thisy, node2[dummy].x, node2[dummy].y) > 680)
               {
                with(node[dummy]) instance_destroy();
                with(node2[dummy]) instance_destroy();
               }
              //Check if a node exists
              if(instance_exists(node[dummy]) && node[dummy] != -1)
              {
               //Check if a second node exists
               if(instance_exists(node2[dummy]) && node2[dummy] != -1)
               {
                //Create a third node
                node3[dummy] = instance_create(shootx, shooty, align);
                node3[dummy].direction = point_direction(shootx, shooty, thisx, thisy);
                node3[dummy].targetx = thisx;
                node3[dummy].targety = thisy;
                node3[dummy].final = 1;
                node3[dummy].mid = dummy;
                //Make the second node connect to this node
                node2[dummy].second = node3[dummy];
                //Connect to the first node
                node3[dummy].second = node[dummy];
                //Break the loop
                break;
               }
               //Create a second node
               node2[dummy] = instance_create(shootx, shooty, align);
               node2[dummy].direction = point_direction(shootx, shooty, thisx, thisy);
               node2[dummy].targetx = thisx;
               node2[dummy].targety = thisy;
               node2[dummy].final = 0;
               node2[dummy].mid = dummy;
               //Make the first node connect to this node
               node[dummy].second = node2[dummy];
               //Break the loop
               break;
              }
              //Create a node
              node[dummy] = instance_create(shootx, shooty, align);
              node[dummy].direction = point_direction(shootx, shooty, thisx, thisy);
              node[dummy].targetx = thisx;
              node[dummy].targety = thisy;
              node[dummy].final = 0;
              node[dummy].mid = dummy;
              //Break the loop
              break;
             }
             if(global.master = true)
               client_sendall(0, dummy);
        break;
        
        //Burst
        case 14:
             shootx = readshort(0);
             shooty = readshort(0);
             thisx = readshort(0);
             thisy = readshort(0);
             if(global.team[dummy] != global.team[global.mymid])
              align = obj_burst_enemy;
             else
              align = obj_burst; 
             form = instance_create(shootx, shooty, align);
             form.direction = point_direction(shootx, shooty, thisx, thisy);
             form.targetx = thisx;
             form.targety = thisy;
             form.mid = dummy;
             form.amplified = readbyte(0);
             if(global.master = true)
               client_sendall(0, dummy);
        break;
         //Trident Missile
         case 15:
              shootx = readshort(0);
              shooty = readshort(0);
              shootdir = readbyte(0)*1.5;
              targeted = readbyte(0);
              //Match up target and set object to be created
              if(targeted = global.mymid)
              {
               lockon = obj_ship;
               align = obj_tridentmissile_enemy;
              }
              else
              {
               lockon = global.playership[targeted];
               if(global.team[dummy] != global.team[global.mymid])
                align = obj_tridentmissile_enemy;
               else
                align = obj_tridentmissile; 
              }
              //Create the first missile and give it its properties
              missile1 = instance_create(shootx, shooty, align);
              missile1.startdir = shootdir;
              missile1.direction = shootdir;
              missile1.speed = 4;
              missile1.target = lockon;
              missile1.mid = dummy;
              missile1.trio = 1;
              missile1.amplified = readbyte(0);
              //Create the second missile
              missile2 = instance_create(shootx, shooty, align);
              missile2.startdir = shootdir;
              missile2.direction = shootdir-90;
              missile2.speed = 4;
              missile2.target = lockon;
              missile2.mid = dummy;
              missile2.trio = 2;
              missile2.middle = missile1;
              missile2.amplified = missile1.amplified;
              //Create the last missile
              missile3 = instance_create(shootx, shooty, align);
              missile3.startdir = shootdir;
              missile3.direction = shootdir+90;
              missile3.speed = 4;
              missile3.target = lockon;
              missile3.mid = dummy;
              missile3.trio = 3;
              missile3.middle = missile1;
              missile3.amplified = missile1.amplified;
              //Take note of the last two missile in the first missile
              missile1.second = missile2;
              missile1.third = missile3;
              if(global.master = true)
               client_sendall(0, dummy)
         break;
         
         //Slash
         case 16:
              shootx = readshort(0);
              shooty = readshort(0);
              thisx = readshort(0);
              thisy = readshort(0);
              if(global.team[dummy] != global.team[global.mymid])
               align = obj_slash_enemy;
              else
               align = obj_slash; 
              form = instance_create(shootx, shooty, align);
              form.targetx = thisx;
              form.targety = thisy;
              form.mid = dummy;
              form.amplified = readbyte(0);
              if(global.master = true)
               client_sendall(0, dummy);
         break;
         //Horizon
         case 17:
              shootx = readshort(0);
              shooty = readshort(0);
              shootdir = readbyte(0)*1.5;              
              if(global.team[dummy] != global.team[global.mymid])
               align = obj_horizon_enemy;
              else
               align = obj_horizon; 
              form = instance_create(shootx, shooty, align);
              form.direction = shootdir;
              form.mid = dummy;
              form.amplified = readbyte(0);
              if(global.master = true)
               client_sendall(0, dummy);
         break;
        //Hacker Mine
        case 18:
             shootx = readshort(0);
             shooty = readshort(0);
             if(global.team[dummy] != global.team[global.mymid])
              mine = instance_create(shootx, shooty, obj_hackermine_enemy);
             else
              mine = instance_create(shootx, shooty, obj_hackermine);
             mine.mid = dummy;
             mine.amplified = readbyte(0);
             if(global.master = true)
              client_sendall(0, dummy);
        break;
        
        //Shock Missile
        case 19:
             shootx = readshort(0);
             shooty = readshort(0);
             shootdir = readbyte(0)*1.5;
             targeted = readbyte(0);
             //Match up target and set object to be created
             if(targeted = global.mymid)
             {
              lockon = obj_ship;
              align = obj_shockmissile_enemy;
             }
             else
             {
              lockon = global.playership[targeted];
              if(global.team[dummy] != global.team[global.mymid])
               align = obj_shockmissile_enemy;
              else
               align = obj_shockmissile; 
             }
             missile = instance_create(shootx, shooty, align);
             missile.direction = shootdir;
             missile.speed = 12;
             missile.target = lockon;
             missile.mid = dummy;
             missile.amplified = readbyte(0);
             if(global.master = true)
               client_sendall(0, dummy);
        break;
           
        
        //Alpha Drift/ Barrell Roll
        case 21:
            if(global.playership[dummy].sprite_index = spr_goliath || global.playership[dummy].sprite_index = spr_goliath_enemy)
            {
                global.playership[dummy].velocity_maximum = 10;
                global.playership[dummy].speed = 10;
                global.playership[dummy].ship_turning_rate = 8;
                global.playership[dummy].alarm[3] = 60;
            }
            global.playership[dummy].ship_ability_active_flag = readbyte(0);
            if(global.master = true)
               client_sendall(0, dummy);
        break; 
                   
        //Hermit Missile
        case 22:
             shootx = readshort(0);
             shooty = readshort(0);
             shootdir = readbyte(0)*1.5;
             targeted = readbyte(0);
              if(global.team[dummy] != global.team[global.mymid])
               align = obj_hermitmissile_enemy;
              else
               align = obj_hermitmissile; 
             missile = instance_create(shootx, shooty, align);
             missile.direction = shootdir;
             missile.speed = 13;
             missile.mid = dummy;
             missile.amplified = readbyte(0);
             missile.target = global.playership[targeted];
             if(global.master = true)
               client_sendall(0, dummy);
        break;
        
        //Strike Missile
        case 23:
             shootx = readshort(0);
             shooty = readshort(0);
             shootdir = readbyte(0)*1.5;
             targeted = readbyte(0);
             //Match up target and set object to be created
             if(targeted = global.mymid)
             {
              lockon = obj_ship;
              align = obj_strikemissile_enemy;
             }
             else
             {
              lockon = global.playership[targeted];
              if(global.team[dummy] != global.team[global.mymid])
               align = obj_strikemissile_enemy;
              else
               align = obj_strikemissile; 
             }
             missile = instance_create(shootx, shooty, align);
             missile.direction = shootdir;
             missile.speed = 13;
             missile.target = lockon;
             missile.mid = dummy;
             missile.amplified = readbyte(0);
             if(global.master = true)
               client_sendall(0, dummy);
        break;
 
        //Strike Mine
        case 24:
             shootx = readshort(0);
             shooty = readshort(0);
             if(global.team[dummy] != global.team[global.mymid])
              mine = instance_create(shootx, shooty, obj_strikemine_enemy);
             else
              mine = instance_create(shootx, shooty, obj_strikemine);
             mine.mid = dummy;
             mine.amplified = readbyte(0);
             if(global.master = true)
               client_sendall(0, dummy);
        break;
        
        //Turret
        case 25:
             shootx = readshort(0);
             shooty = readshort(0)
             if(global.team[dummy] != global.team[global.mymid])
              solus = instance_create(shootx, shooty, obj_turret_enemy);
             else
              solus = instance_create(shootx, shooty, obj_turret);
             solus.mid = dummy;
             solus.amplified = readbyte(0);
             if(global.master = true)
               client_sendall(0, dummy);
        break;
       
        //Spiral
        case 26:
             shootx = readshort(0);
             shooty = readshort(0);
             thisx = readshort(0);
             thisy = readshort(0);
             if(global.team[dummy] != global.team[global.mymid])
              align = obj_spiral_enemy;
             else
              align = obj_spiral; 
             form = instance_create(shootx, shooty, align);
             form.direction = point_direction(shootx, shooty, thisx, thisy);
             form.targetx = thisx;
             form.targety = thisy;
             form.mid = dummy;
             form.amplified = readbyte(0);
             if(global.master = true)
               client_sendall(0, dummy);
        break;
        
        //Whip
        case 27:
            if(global.sfxtoggle = 0)
            {
             global.playership[dummy].emit_whip = audio_emitter_create();
             audio_emitter_position(global.playership[dummy].emit_whip, x, y, 0);
             global.playership[dummy].sound_whip = audio_play_sound_on(global.playership[dummy].emit_whip, snd_whip, 1, 1);
            }
            global.playership[dummy].alarm[8] = 1;
            global.playership[dummy].whips = 15;
            global.playership[dummy].hitx = readshort(0);
            global.playership[dummy].hity = readshort(0);
            if(readbyte(0) = 1)
             global.playership[dummy].whips = 20;              
            global.playership[dummy].mid = dummy;
            if(global.master = true)
             client_sendall(0, dummy);
        break;
        
        //Trail
        case 28:
             shootx = readshort(0);
             shooty = readshort(0);  
             shootdir = readshort(0);
             if(global.team[dummy] != global.team[global.mymid])
              align = obj_trail_enemy;
             else
              align = obj_trail; 
             form = instance_create(shootx, shooty, align);
             form.direction = shootdir;
             form.mid = dummy;
             form.amplified = readbyte(0);
             if(global.master = true)
               client_sendall(0, dummy);
        break;
        
        //Serpent
        case 29:
             shootx = readshort(0);
             shooty = readshort(0);
             shootdir = readshort(0);
             if(global.team[dummy] != global.team[global.mymid])
              align = obj_serpent_enemy;
             else
              align = obj_serpent; 
             form = instance_create(shootx, shooty, align);
             form.direction = shootdir;
             form.mid = dummy;
             form.amplified = readbyte(0);
             if(global.master = true)
               client_sendall(0, dummy);
        break;
        
        //Storm
        case 30:
             shootx = readshort(0);
             shooty = readshort(0);
             thisx = readshort(0);
             thisy = readshort(0);
             stormdir = point_direction(shootx, shooty, thisx, thisy);
             if(global.team[dummy] != global.team[global.mymid])
             {
              align = obj_storm_enemy;
              alignwall = obj_storm_enemy_wall;
              with(obj_storm_enemy)
              {
                if(mid = obj_mod.dummy)
                    age += 1;
                if(age = 4)
                    instance_destroy();
              }
              with(obj_storm_enemy_wall)
              {
                if(mid = obj_mod.dummy)
                    age += 1;
                if(age = 4)
                    instance_destroy();
              }
             }
             else
             {
              align = obj_storm;
              alignwall = obj_storm_wall;
              with(obj_storm)
              {
                if(mid = obj_mod.dummy)
                    age += 1;
                if(age = 4)
                    instance_destroy();
              }
              with(obj_storm_wall)
              {
                if(mid = obj_mod.dummy)
                    age += 1;
                if(age = 4)
                    instance_destroy();
              }
             }
             //Create and send shots at the cursor
             if(readbyte(0) = 0)
             {
              storm = instance_create(shootx, shooty, align);
              storm.direction = stormdir;
              storm.mid = dummy;
              storm = instance_create(shootx, shooty, align);
              storm.direction = stormdir-30;
              storm.mid = dummy;
              storm = instance_create(shootx, shooty, align);
              storm.direction = stormdir+30;
              storm.mid = dummy;
              storm = instance_create(shootx, shooty, align);
              storm.direction = stormdir-15;
              storm.mid = dummy;
              storm = instance_create(shootx, shooty, align);
              storm.direction = stormdir+15;
              storm.mid = dummy;
              storm = instance_create(thisx, thisy, alignwall);
              storm.direction = stormdir-180;
              storm.x += lengthdir_x(point_distance(shootx, shooty, thisx, thisy), storm.direction-180);
              storm.y += lengthdir_y(point_distance(shootx, shooty, thisx, thisy), storm.direction-180);       
              storm.image_angle = storm.direction;
              storm.visible = 0;
              storm.mid = dummy;
             }
             else
             {
              storm = instance_create(shootx, shooty, align);
              storm.direction = stormdir-5;
              storm.mid = dummy;
              storm = instance_create(shootx, shooty, align);
              storm.direction = stormdir+5;
              storm.mid = dummy;
              storm = instance_create(shootx, shooty, align);
              storm.direction = stormdir-15;
              storm.mid = dummy;
              storm = instance_create(shootx, shooty, align);
              storm.direction = stormdir+15;
              storm.mid = dummy;
              storm = instance_create(shootx, shooty, align);
              storm.direction = stormdir-25;
              storm.mid = dummy;
              storm = instance_create(shootx, shooty, align);
              storm.direction = stormdir+25;
              storm.mid = dummy;
              storm = instance_create(shootx, shooty, align);
              storm.direction = stormdir-35;
              storm.mid = dummy;
              storm = instance_create(shootx, shooty, align);
              storm.direction = stormdir+35;
              storm.mid = dummy;
              storm = instance_create(thisx, thisy, alignwall);
              storm.direction = stormdir-180;
              storm.x += lengthdir_x(point_distance(shootx, shooty, thisx, thisy), storm.direction-180);
              storm.y += lengthdir_y(point_distance(shootx, shooty, thisx, thisy), storm.direction-180);       
              storm.image_angle = storm.direction;
              storm.visible = 0;
              storm.mid = dummy;
             }
             
             if(global.master = true)
               client_sendall(0, dummy);
        break;
        
        //Direct
        case 31:
             shootx = readshort(0);
             shooty = readshort(0);
             thisx = readshort(0);
             thisy = readshort(0);
             amp = readbyte(0);
             if(global.team[dummy] != global.team[global.mymid])
              align = obj_trigger_enemy;
             else
              align = obj_trigger; 
            var direct;
            direct = 0;
            if(instance_exists(align))
                if(instance_exists(directthis[dummy]))
                    direct = 1;
            if(direct = 0)
            {
                //Crete and send the initial shot at the cursor
                form = instance_create(shootx, shooty, align);
                form.direction = point_direction(shootx, shooty, thisx, thisy);
                form.targetx = thisx;
                form.targety = thisy;
                form.mid = dummy;
                form.amplified = amp;
                directthis[dummy] = form;
            }
            else
            {
                sfx_play(snd_wave, directthis[dummy].x, directthis[dummy].y);
                directthis[dummy].x = directthis[dummy].targetx;
                directthis[dummy].y = directthis[dummy].targety;
                directthis[dummy].targetx = thisx;
                directthis[dummy].targety = thisy;
                directthis[dummy].speed = 13;
                directthis[dummy].direction = point_direction(directthis[dummy].x, directthis[dummy].y, thisx, thisy);
                directthis[dummy].alarm[0] = 5;
            }
                 if(global.master = true)
                   client_sendall(0, dummy);
        break;         
        
        //Trigger Detonation
        case 32:
             if(global.team[dummy] != global.team[global.mymid])
             {
              align = obj_trigger_enemy;
              target = prnt_ally;
             }
             else
             {
              align = obj_trigger; 
              target = prnt_enemy;
             }
        
             if(instance_number(align) < 1)
              return 0;
             with(align)
             {
              if(mid = obj_mod.dummy)
              {
               if(instance_number(obj_mod.target) > 0)
               {
                triggertarget = instance_nearest(x, y, obj_mod.target);
                triggerdir = point_direction(x, y, triggertarget.x, triggertarget.y);
               }
               else
                triggerdir = 0;
                sfx_play(snd_trigger, x, y);
               bullet = bullet_create(x, y, "Trigger", triggerdir, obj_mod.dummy, 0);
               bullet = bullet_create(x, y, "Trigger", 0+nextshot, obj_mod.dummy, 0);
               bullet = bullet_create(x, y, "Trigger", 60+nextshot, obj_mod.dummy, 0);
               bullet = bullet_create(x, y, "Trigger", 120+nextshot, obj_mod.dummy, 0);
               bullet = bullet_create(x, y, "Trigger", 180+nextshot, obj_mod.dummy, 0);
               bullet = bullet_create(x, y, "Trigger", 240+nextshot, obj_mod.dummy, 0);
               bullet = bullet_create(x, y, "Trigger", 300+nextshot, obj_mod.dummy, 0);
               nextshot += 30;
              }
             }
             if(global.master = true)
               client_sendall(0, dummy);
        break;
        
        //Split Missile
        case 33:
             shootx = readshort(0);
             shooty = readshort(0);
             shootdir = readbyte(0)*1.5;
              if(global.team[dummy] != global.team[global.mymid])
               align = obj_splitmissile_enemy;
              else
               align = obj_splitmissile; 
             missile = instance_create(shootx, shooty, align);
             missile.direction = shootdir;
             missile.speed = 13;
             missile.mid = dummy;
             missile.oldmid = -1;
             missile.damage = 11;
             missile.amplified = readbyte(0);
             if(global.master = true)
               client_sendall(0, dummy);
        break;
        
        //Cluster Mine
        case 34:
             shootx = readshort(0);
             shooty = readshort(0);
            //Destroy nearby mines
            if(global.team[dummy] = global.team[global.mymid])
            {
                for(i = instance_nearest(shootx, shootx, obj_clustermine); i != noone; i = instance_nearest(shootx, shootx, obj_clustermine))
                {
                    if(point_distance(shootx, shootx, i.x, i.y) < 400)
                        with(i)
                            instance_destroy();
                    else
                        break;
                }
                for(i = instance_nearest(shootx, shootx, obj_clustermine_small); i != noone; i = instance_nearest(shootx, shootx, obj_clustermine_small))
                {
                    if(point_distance(shootx, shootx, i.x, i.y) < 400)
                        with(i)
                            instance_destroy();
                    else
                        break;
                }
            }
            else
            {
                for(i = instance_nearest(shootx, shootx, obj_clustermine_enemy); i != noone; i = instance_nearest(shootx, shootx, obj_clustermine_enemy))
                {
                    if(point_distance(shootx, shootx, i.x, i.y) < 400)
                        with(i)
                            instance_destroy();
                    else
                        break;
                }
                for(i = instance_nearest(shootx, shootx, obj_clustermine_small_enemy); i != noone; i = instance_nearest(shootx, shootx, obj_clustermine_small_enemy))
                {
                    if(point_distance(shootx, shootx, i.x, i.y) < 400)
                        with(i)
                            instance_destroy();
                    else
                        break;
                }
            }
            
                 if(global.team[dummy] != global.team[global.mymid])
              mine = instance_create(shootx, shooty, obj_clustermine_enemy);
             else
              mine = instance_create(shootx, shooty, obj_clustermine);
             mine.mid = dummy;
             mine.amplified = readbyte(0);
             if(global.master = true)
               client_sendall(0, dummy);
        break;
        
        //Swiftwing warp
        case 35:
            sfx_play(snd_swifttele, global.playership[dummy].x, global.playership[dummy].y);
             if(global.playership[dummy].sprite_index = spr_swiftwing)
              global.playership[dummy].sprite_index = spr_swiftwing_warp;
             else
             global.playership[dummy].sprite_index = spr_swiftwing_warp_enemy;
             global.playership[dummy].warpx = readshort(0);
             global.playership[dummy].warpy = readshort(0);
             global.playership[dummy].hornet_warp = 60;
             if(global.master = true)
               client_sendall(0, dummy);
        break;
       }
