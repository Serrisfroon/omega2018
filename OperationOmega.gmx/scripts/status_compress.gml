//This function compresses the four status variables into a single variable
//with a value 1-27. Because of this, 1 byte is sent for predictions in the 
//refresh packet, and all three statuses can be sent whenever any change
//////////////////////////////////////////////////////////////////////////////////
//argument0 = smoke
//argument1 = hacked
//argument2 = shocked
//argument3 = chained
//argument4 = swiftwing beserk
//////////////////////////////////////////////////////////////////////////////////
var dmg, hack, shock, shieldstat, datchain, step, crazy;
dmg = argument0;
hack = argument1;
shock = argument2;
datchain = argument3;
crazy = argument4;
shieldstat = min(obj_ship.shield, 1);
step = 0;

switch(crazy)
{
 case 0:
     step = 0; 
 break;
 case 1:
      step = 112;
 break;
}
switch(datchain)
{
 case 0:
     step += 0; 
 break;
 case 1:
      step += 56;
 break;
}
switch(shieldstat)
{
 case 0:
      step += 0;
 break;
 case 1:
      step += 28;
 break;
}
switch(dmg)
{
 case 0:
      step += 0;
 break;
 case 1:
      step += 4;
 break;
 case 2:
      step += 8;
 break;
 case 3:
      step += 12;
 break;
 case 4:
      step += 16;
 break;
 case 5:
      step += 20;
 break;
 default:
      step += 24;
 break;
}
switch(hack)
{
 case 0:
      step += 0;
 break;
 case 1:
      step += 2;
 break;
}switch(shock)
{
 case 0:
      step += 1;
 break;
 case 1:
      step += 2;
 break;
}
return step;