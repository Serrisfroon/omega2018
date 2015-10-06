//Creates a bullet to be handled by obj_bulletcontrol. Made into a script 
//to make code less clusterfuck'd.
////////////////////////////////////////////////////////////////////////
//bullet_create(x, y, type, direction, mid)
//possible argument5 for stasis: life
//returns the id of the bullet
////////////////////////////////////////////////////////////////////////
var lolx, loly, type, lolspeed, mid, name, sprite, life, after, dmg, mask, blend, i, image;
lolx = argument0;
loly = argument1;
type = argument2;
loldir = argument3;
mid = argument4;

if(global.team[mid] = global.team[global.mymid])
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
      mask = 5;
      lolspeed = 9.5+speed/2;
      sfx_play(snd_needle, lolx, loly);
 break;
 case "Sonic":
      name = "Sonic";
      sprite = spr_sonic;
      life = 180;
      after = obj_generic_hit;
      dmg = 4;
      mask = 3;
      lolspeed = 13.5+speed/2;
      sfx_play(snd_sonic, lolx, loly);
 break;
 case "Wave":
      name = "Wave";
      sprite = spr_wave;
      life = 240;
      after = obj_generic_hit;
      dmg = 16;
      mask = 14;
      lolspeed = 7.5+speed/2;
      sfx_play(snd_wave, lolx, loly);
 break;
 case "Crossfire":
      name = "Seeker";
      sprite = spr_flank;
      life = 120;
      after = obj_generic_hit;
      dmg = 6;
      mask = 7;
      lolspeed = 21;
 break;
 case "Stasis":
      name = "Stasis";
      sprite = spr_stasis;
      life = 120;
      if(global.team[mid] = global.team[global.mymid])
       after = obj_stasis_field;
      else
       after = obj_enemystasis_field;      
      dmg = 1;
      mask = 7;
      lolspeed = 9.5+speed/2;
 break;
 case "Stasisb":
      name = "Stasis";
      sprite = spr_stasis;
      if(argument5 = 0)
       life = point_distance(x, y, mouse_x, mouse_y)/13;
      else
       life = argument5;
      if(life > 150)
       life = 150;
      if(global.team[mid] = global.team[global.mymid])
       after = obj_stasis_field;
      else
       after = obj_enemystasis_field;      
      dmg = 1;
      mask = 9;
      lolspeed = 9.5+speed/2;
 break;
 case "Burst":
      name = "Burst";
      sprite = spr_burst;
      life = 250;
      after = obj_generic_hit;
      dmg = 5;
      mask = 7;
      lolspeed = 12;
 break;
 case "Formation":
      name = "Formation";
      sprite = spr_newformation;
      life = 240;
      after = obj_generic_hit;
      dmg = 5;
      mask = 7;
      lolspeed = 10;
 break;
 case "Solus":
      name = "Solus";
      sprite = spr_formation;
      life = 100;
      after = obj_generic_hit;
      dmg = 4;
      mask = 7;
      lolspeed = 14;
 break;
 case "Horizon":
      name = "Horizon";
      sprite = spr_horizon;
      life = 120;
      after = obj_generic_hit;
      dmg = 8;
      mask = 8;
      lolspeed = 9;
 break;
 case "Slash":
      name = "Slash";
      sprite = spr_slash;
      life = 200;
      after = obj_generic_hit;
      dmg = 5;
      mask = 8;
      lolspeed = 12;
 break;
 case "Slashamp":
      name = "Slash";
      sprite = spr_slash;
      life = 200;
      after = obj_generic_hit;
      dmg = 5;
      mask = 8;
      lolspeed = 15;
 break;
 case "Double":
      name = "Double";
      sprite = spr_double;
      life = 140;
      after = obj_generic_hit;
      dmg = 8;
      mask = 7;
      lolspeed = 9.5+speed/2;
 break;
 case "Pierce":
      name = "Pierce";
      sprite = spr_pierce;
      life = 200;
      after = obj_generic_hit;
      dmg = 3;
      mask = 5;
      lolspeed = 10.5+speed/2;
      sfx_play(snd_pierce, lolx, loly);
 break;
 case "Spread":
      name = "Spread";
      sprite = spr_spread;
      life = 200;
      after = obj_generic_hit;
      dmg = 5;
      mask = 8;
      lolspeed = 10.5+speed/2;
 break;
 case "Turret":
      name = "Turret";
      sprite = spr_turretshot;
      life = 200;
      after = obj_generic_hit;
      dmg = 3;
      mask = 4;
      lolspeed = 10;
      sfx_play(snd_sonic, lolx, loly);
 break;
 case "Whip":
      name = "Whip";
      sprite = spr_whip;
      life = 200;
      after = obj_whip_hit;      
      dmg = 5;
      mask = 8;
      lolspeed = argument5;
 break;
 case "Direct":
      name = "Direct";
      sprite = spr_trigger_shot;
      life = 55;
      after = obj_generic_hit;
      dmg = 5;
      mask = 7;
      lolspeed = 14;
 break;
 case "Serpent":
      name = "Serpent";
      sprite = spr_snake_body;
      life = 28;
      after = obj_serpent_hit;      
      dmg = 6;
      mask = 12;
      lolspeed = 0;
 break;
 case "Serpent ":
      name = "Serpent";
      sprite = spr_snake_body;
      life = 46;
      after = obj_serpent_hit;      
      dmg = 6;
      mask = 12;
      lolspeed = 0;
 break;

}

obj_bulletcontrol.speed = lolspeed;
obj_bulletcontrol.direction = loldir;
for(i = 1; i <= obj_bulletcontrol.bulletmax+1; i += 1)
{
 if(obj_bulletcontrol.bulletfree[i] = false) continue;
 obj_bulletcontrol.bulletfree[i] = false;
 //The bullet type is also the sprite
 obj_bulletcontrol.bullettype[i] = sprite;
 //The bullet's coordinates
 obj_bulletcontrol.bulletx[i] = lolx;
 obj_bulletcontrol.bullety[i] = loly;
 //The bullet's vspeed and hspeed
 obj_bulletcontrol.bullethspeed[i] = obj_bulletcontrol.hspeed;
 obj_bulletcontrol.bulletvspeed[i] = obj_bulletcontrol.vspeed;
 //The bullet's direction. Used for drawing at the right angle
 obj_bulletcontrol.bulletdirection[i] = obj_bulletcontrol.direction;
 //The bullet's blend atribute. It shows what team it belongs to
 obj_bulletcontrol.bulletblend[i] = blend;
 //The bullet's image, it's single frame of the sprite
 obj_bulletcontrol.bulletsingle[i] = image;
 //The bullet's life. Each step, it is lowered by one. At 0, this index is freed.
 obj_bulletcontrol.bulletlife[i] = life;
 //The bullet's damage. Stored to make loops much easier
 obj_bulletcontrol.bulletdamage[i] = dmg;
 //The bullet's death object. When a bullet has a collision, this object is created.
 obj_bulletcontrol.bulletend[i] = after;     
 //The bullet's multiplayer id. This will trace the bullet to the player who shot it.
 obj_bulletcontrol.bulletmid[i] = mid;
 //The bullet's name. Stored for ease of use
 obj_bulletcontrol.bulletname[i] = name;
 //The bullet's mask radius. Used for collision checking with ships
 obj_bulletcontrol.bulletmask[i] = mask;
 if(i = obj_bulletcontrol.bulletmax+1) obj_bulletcontrol.bulletmax += 1;
 break;
}
obj_bulletcontrol.speed = 0;
 return i;