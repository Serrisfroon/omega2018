//weaponsmith(deploy slot number);
//Adds towards the smithing of a new deploy use
var singleratio;
singleratio = obj_ship.maxdstock[argument0]/7200;
if(obj_ship.deploystock[argument0] < obj_ship.maxdstock[argument0])
 obj_ship.deploystock[argument0] += singleratio;

if(room != rm_practice)
    exit;
 switch(global.deploy[argument0])
 {
  case 1:
       obj_ship.dualmissile = obj_ship.deploystock[argument0]*2;
  break;
  case 2:
       obj_ship.layermissile = obj_ship.deploystock[argument0];
  break;
  case 3:
       obj_ship.huntermine = obj_ship.deploystock[argument0];
  break;
  case 4:
       obj_ship.locustmissile = obj_ship.deploystock[argument0]*6;
  break;
  case 5:
       obj_ship.phantommine = obj_ship.deploystock[argument0];
  break;
  case 6:
       obj_ship.soluscount = obj_ship.deploystock[argument0];
  break;
  case 7:
       obj_ship.tridentmissile = obj_ship.deploystock[argument0]*3;
  break;
  case 8:
       obj_ship.shockmissile = obj_ship.deploystock[argument0];
  break;
  case 9:
       obj_ship.hackermine = obj_ship.deploystock[argument0];
  break;
  case 10:
       obj_ship.hermitmissile = obj_ship.deploystock[argument0];
  break;
  case 11:
       obj_ship.strikemissile = obj_ship.deploystock[argument0];
  break;
  case 12:
       obj_ship.strikemine = obj_ship.deploystock[argument0];
  break;
  case 13:
       obj_ship.turret = obj_ship.deploystock[argument0];
  break;
  case 14:
       obj_ship.splitmissile = obj_ship.deploystock[argument0];
  break;
  case 15:
       obj_ship.clustermine = obj_ship.deploystock[argument0];
  break;
 }
