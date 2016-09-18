//weaponsmith(deploy slot number);
//Adds towards the smithing of a new deploy use
var singleratio;
singleratio = obj_player.maxdstock[argument0]/7200;
if(obj_player.deploystock[argument0] < obj_player.maxdstock[argument0])
 obj_player.deploystock[argument0] += singleratio;

if(room != rm_practice)
    return 0;
 switch(global.deploy[argument0])
 {
  case 1:
       obj_player.dualmissile = obj_player.deploystock[argument0]*2;
  break;
  case 2:
       obj_player.layermissile = obj_player.deploystock[argument0];
  break;
  case 3:
       obj_player.huntermine = obj_player.deploystock[argument0];
  break;
  case 4:
       obj_player.locustmissile = obj_player.deploystock[argument0]*6;
  break;
  case 5:
       obj_player.phantommine = obj_player.deploystock[argument0];
  break;
  case 6:
       obj_player.soluscount = obj_player.deploystock[argument0];
  break;
  case 7:
       obj_player.tridentmissile = obj_player.deploystock[argument0]*3;
  break;
  case 8:
       obj_player.shockmissile = obj_player.deploystock[argument0];
  break;
  case 9:
       obj_player.hackermine = obj_player.deploystock[argument0];
  break;
  case 10:
       obj_player.hermitmissile = obj_player.deploystock[argument0];
  break;
  case 11:
       obj_player.strikemissile = obj_player.deploystock[argument0];
  break;
  case 12:
       obj_player.strikemine = obj_player.deploystock[argument0];
  break;
  case 13:
       obj_player.turret = obj_player.deploystock[argument0];
  break;
  case 14:
       obj_player.splitmissile = obj_player.deploystock[argument0];
  break;
  case 15:
       obj_player.clustermine = obj_player.deploystock[argument0];
  break;
 }
