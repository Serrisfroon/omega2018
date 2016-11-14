//Creates a bullet to be handled by obj_bulletcontrol. Made into a script 
//to make code less clusterfuck'd.
////////////////////////////////////////////////////////////////////////
//bullet_create(x, y, type, direction, mid)
//possible argument5 for stasis: life
//returns the id of the bullet
////////////////////////////////////////////////////////////////////////
var lolx, loly, type, lolspeed, current_bullet_mid, name, sprite, life, after, dmg, mask, blend, i, image, accuracy, half_accuracy, is_primary, bullet_number, bullet_loop, bullet_check;
lolx = argument0;
loly = argument1;
type = argument2;
loldir[1] = argument3;
current_bullet_mid = argument4;
is_primary = false;

if(global.team[current_bullet_mid] = global.team[global.mymid])
 blend = global.allycolor;
else
 blend = global.enemycolor;

if(blend = c_red)
    image = 0;
else
    image = 1;
    
switch(type)
{
    case "Needle":
         name = "Needle";
         sprite = spr_needle;
         life = 240;
         after = obj_generic_hit;
         dmg = 10;
         mask = 14;
         lolspeed = 9.5+speed/2;
         accuracy = 3;
         half_accuracy = 6;
         bullet_number = 1;
         is_primary = true;
         sfx_play(snd_needle, lolx, loly);
    break;
    case "Sonic":
         name = "Sonic";
         sprite = spr_sonic;
         life = 180;
         after = obj_generic_hit;
         dmg = 4;
         mask = 12;
         lolspeed = 13.5+speed/2;
         accuracy = 14;
         half_accuracy = 7;
         bullet_number = 2;
         loldir[2] = loldir[1];
         is_primary = true;
         sfx_play(snd_sonic, lolx, loly);
    break;
    case "Wave":
         name = "Wave";
         sprite = spr_wave;
         life = 240;
         after = obj_generic_hit;
         dmg = 16;
         mask = 23;
         lolspeed = 7.5+speed/2;
         accuracy = 2;
         half_accuracy = 1;      
         bullet_number = 1;
         is_primary = true;
         sfx_play(snd_wave, lolx, loly);
    break;
    case "Seeker":
           sfx_play(snd_flank, x, y);
            if(blend = global.allycolor)
                var primary_object = obj_flank;
            else
                var primary_object = obj_flank_enemy;
           //Create the shot and give it speed and facedir
           flank = instance_create(x+lengthdir_x(9, facedir), y+lengthdir_y(9, facedir), primary_object);
           flank.speed = 10.5+speed/2;
           flank.direction = loldir[1]-7+primary_random(14, current_bullet_mid);
           flank.mid = current_bullet_mid;
           return -1;
           exit;
    break;
    case "Stasis":
            if(blend = global.allycolor)
                var primary_object = obj_stasisnew;
            else
                var primary_object = obj_stasisnew_enemy;
           bullet = instance_create(x+lengthdir_x(9, facedir), y+lengthdir_y(9, facedir), primary_object);
           sfx_play(snd_stasis, x, y);
           bullet.direction = loldir[1];
           bullet.speed = 7+speed;
           bullet.mid = current_bullet_mid;
           return -1;
           exit;
    break;
    case "Stasisb":
         name = "Stasis";
         sprite = spr_stasis;
         is_primary = true;
         if(argument5 = 0)
          life = point_distance(x, y, mouse_x, mouse_y)/13;
         else
          life = argument5;
         if(life > 150)
          life = 150;
         if(global.team[current_bullet_mid] = global.team[global.mymid])
          after = obj_stasis_field;
         else
          after = obj_enemystasis_field;      
         dmg = 1;
         mask = 18;
         lolspeed = 9.5+speed/2;
         is_primary = true;
         bullet_number = 1;
    break;
    case "Burst":
         name = "Burst";
         sprite = spr_burst;
         life = 250;
         after = obj_generic_hit;
         dmg = 5;
         mask = 16;
         lolspeed = 12;
         accuracy = 0;
         half_accuracy = 0;
         bullet_number = 1;
    break;
    case "Formation":
         name = "Formation";
         sprite = spr_newformation;
         life = 240;
         after = obj_formation_hit;
         dmg = 5;
         mask = 16;
         lolspeed = 10;
         accuracy = 0;
         half_accuracy = 0;
         bullet_number = 1;
    break;
    case "Solus":
         name = "Solus";
         sprite = spr_formation;
         life = 100;
         after = obj_generic_hit;
         dmg = 4;
         mask = 16;
         lolspeed = 14;
         accuracy = 0;
         half_accuracy = 0;
         bullet_number = 1;
    break;
    case "Horizon":
         name = "Horizon";
         sprite = spr_horizon;
         life = 120;
         after = obj_generic_hit;
         dmg = 8;
         mask = 17;
         lolspeed = 9;
         accuracy = 0;
         half_accuracy = 0;
         bullet_number = 1;
    break;
    case "Slash":
         name = "Slash";
         sprite = spr_slash;
         life = 200;
         after = obj_slash_hit;
         dmg = 5;
         mask = 17;
         lolspeed = 12;
         accuracy = 0;
         half_accuracy = 0;
         bullet_number = 1;
    break;
    case "Slashamp":
         name = "Slash";
         sprite = spr_slash;
         life = 200;
         after = obj_slash_hit;
         dmg = 5;
         mask = 17;
         lolspeed = 15;
         accuracy = 0;
         half_accuracy = 0;
         bullet_number = 1;
    break;
    case "Double":
         name = "Double";
         sprite = spr_double;
         life = 140;
         after = obj_generic_hit;
         dmg = 8;
         mask = 16;
         lolspeed = 9.5+speed/2;
         accuracy = 0;
         half_accuracy = 0;
         bullet_number = 2;
         is_primary = true;
         loldir[2] = loldir[1]-180;
    break;
    case "Pierce":
         name = "Pierce";
         sprite = spr_pierce;
         life = 200;
         after = obj_generic_hit;
         dmg = 3;
         mask = 14;
         lolspeed = 10.5+speed/2;
         sfx_play(snd_pierce, lolx, loly);
         accuracy = 8;
         half_accuracy = 4;
         is_primary = true;
         bullet_number = 1;
    break;
    case "Spread":
         name = "Spread";
         sprite = spr_spread;
         life = 200;
         after = obj_generic_hit;
         dmg = 5;
         mask = 17;
         lolspeed = 10.5+speed/2;
         accuracy = 6;
         half_accuracy = 3;
         bullet_number = 7;
         is_primary = true;
         loldir[2] = loldir[1] - 15;
         loldir[3] = loldir[1] - 30;
         loldir[4] = loldir[1] - 45;
         loldir[5] = loldir[1] + 15;
         loldir[6] = loldir[1] + 30;
         loldir[7] = loldir[1] + 45;
         sfx_play(snd_spread, lolx, loly);
    break;
    case "Turret":
         name = "Turret";
         sprite = spr_turretshot;
         life = 200;
         after = obj_generic_hit;
         dmg = 3;
         mask = 13;
         lolspeed = 10;
         bullet_number = 1;
         sfx_play(snd_sonic, lolx, loly);
    break;
    case "Whip":
         name = "Whip";
         sprite = spr_whip;
         life = 200;
         after = obj_whip_hit;      
         dmg = 5;
         mask = 17;
         lolspeed = argument5;
         bullet_number = 1;
    break;
    case "Direct":
         name = "Direct";
         sprite = spr_trigger_shot;
         life = 55;
         after = obj_generic_hit;
         dmg = 5;
         mask = 16;
         lolspeed = 14;
         bullet_number = 1;
    break;
    case "Serpent":
         name = "Serpent";
         sprite = spr_snake_body;
         life = 28;
         after = obj_serpent_hit;      
         dmg = 6;
         mask = 21;
         lolspeed = 0;
         bullet_number = 1;
    break;
    case "Serpent ":
         name = "Serpent";
         sprite = spr_snake_body;
         life = 46;
         after = obj_serpent_hit;      
         dmg = 6;
         mask = 21;
         lolspeed = 0;
         bullet_number = 1;
    break;
    case "Helix":
        //Create the shot and give it speed and facedir
        sfx_play(snd_helix, x, y);
        if(blend = global.allycolor)
            var primary_object = obj_crossfire;
        else
            var primary_object = obj_crossfire_enemy;
        bullet = instance_create(x+lengthdir_x(9, facedir), y+lengthdir_y(9, facedir), primary_object);
        bullet.speed = 11.5+speed/2;
        crossdir = primary_direction-7+primary_random(14, current_bullet_mid);
        bullet.direction = crossdir;
        bullet.mid = current_bullet_mid;
        bullet.side = 1;
        //Create the shot and give it speed and facedir
        bullet = instance_create(x+lengthdir_x(9, facedir), y+lengthdir_y(9, facedir), primary_object);
        bullet.speed = 11.5+speed/2;
        bullet.direction = crossdir;
        bullet.mid = current_bullet_mid;
        bullet.side = 2;
        return -1;
        exit;
    break;
    case "Siphon":
        if(blend = global.allycolor)
            var primary_object = obj_siphon;
        else
            var primary_object = obj_siphon_enemy;
        
        //Create the shot and give it speed and facedir
        bullet = instance_create(0, 0, primary_object);
        bullet.mid = current_bullet_mid;
        sfx_play(snd_siphon, x, y);
        return -1;
        exit;
    break;
}


for(bullet_loop = 1; bullet_loop <= bullet_number; bullet_loop++)
{
    if(is_primary == true)
        loldir[bullet_loop] = loldir[bullet_loop]-half_accuracy+primary_random(accuracy, current_bullet_mid);
    obj_bulletcontrol.speed = lolspeed;
    obj_bulletcontrol.direction = loldir[bullet_loop];
    for(bullet_check = 1; bullet_check <= obj_bulletcontrol.bulletmax+1; bullet_check += 1)
    {
        if(obj_bulletcontrol.bulletfree[bullet_check] = false) continue;
        obj_bulletcontrol.bulletfree[bullet_check] = false;
        //The bullet type is also the sprite
        obj_bulletcontrol.bullettype[bullet_check] = sprite;
        //The bullet's coordinates
        obj_bulletcontrol.bulletx[bullet_check] = lolx;
        obj_bulletcontrol.bullety[bullet_check] = loly;
        //The bullet's vspeed and hspeed
        obj_bulletcontrol.bullethspeed[bullet_check] = obj_bulletcontrol.hspeed;
        obj_bulletcontrol.bulletvspeed[bullet_check] = obj_bulletcontrol.vspeed;
        //The bullet's direction. Used for drawing at the right angle
        obj_bulletcontrol.bulletdirection[bullet_check] = obj_bulletcontrol.direction;
        //The bullet's blend atribute. It shows what team it belongs to
        obj_bulletcontrol.bulletblend[bullet_check] = blend;
        //The bullet's image, it's single frame of the sprite
        obj_bulletcontrol.bulletsingle[bullet_check] = image;
        //The bullet's life. Each step, it is lowered by one. At 0, this index is freed.
        obj_bulletcontrol.bulletlife[bullet_check] = life;
        //The bullet's damage. Stored to make loops much easier
        obj_bulletcontrol.bulletdamage[bullet_check] = dmg;
        //The bullet's death object. When a bullet has a collision, this object is created.
        obj_bulletcontrol.bulletend[bullet_check] = after;     
        //The bullet's multiplayer id. This will trace the bullet to the player who shot it.
        obj_bulletcontrol.bulletmid[bullet_check] = mid;
        //The bullet's name. Stored for ease of use
        obj_bulletcontrol.bulletname[bullet_check] = name;
        //The bullet's mask radius. Used for collision checking with ships
        obj_bulletcontrol.bulletmask[bullet_check] = mask;
        if(bullet_check = obj_bulletcontrol.bulletmax+1) obj_bulletcontrol.bulletmax += 1;
        break;
    }
}
obj_bulletcontrol.speed = 0;

 return bullet_check;
