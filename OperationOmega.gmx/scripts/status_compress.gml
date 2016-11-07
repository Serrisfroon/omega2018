//This function compresses the four status variables into a single variable
//with a value 1-27. Because of this, 1 byte is sent for predictions in the 
//refresh packet, and all three statuses can be sent whenever any change
//////////////////////////////////////////////////////////////////////////////////
//argument0 = smoke
//argument1 = ship_status_hacked
//argument2 = ship_status_shocked
//argument3 = mid of ship to send status of
//////////////////////////////////////////////////////////////////////////////////
var dmg, hack, shock, shieldstat, datchain, step;
dmg = argument0;
hack = argument1;
shock = argument2;
shieldstat = global.playership[argument3].shieldup;
step = 0;

//Compress the shield stat
switch(shieldstat)
{
    case 1:
        step += 32;
    break;
    default:
        step += 0;
    break;
}
//Compress the hacked stat
switch(hack)
{
 case 0:
      step += 0;
 break;
 case 1:
      step += 16;
 break;
}
//Compress the shocked stat
switch(shock)
{
 case 0:
      step += 0;
 break;
 case 1:
      step += 8;
 break;
}
//Compress the smoking stat
switch(dmg)
{
 case 0:
      step += 1;
 break;
 case 1:
      step += 2;
 break;
 case 2:
      step += 3;
 break;
 case 3:
      step += 4;
 break;
 case 4:
      step += 5;
 break;
 case 5:
      step += 6;
 break;
 default:
      step += 7;
 break;
}

return step;
