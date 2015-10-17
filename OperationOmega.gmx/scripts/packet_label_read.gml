//This script reads the label variable to get the packet id and mid
////////////////////////////////////////////////////////////////////////
//argument0 = label variable
////////////////////////////////////////////////////////////////////////
var label;
label = argument0;
switch(label)
{
 case CLIENT_DROP:
      obj_mod.packet = CLIENT_DROP;
      obj_mod.dummy = readbyte(0);
 break;
 case TIME_UP:
      obj_mod.packet = TIME_UP;
      obj_mod.dummy = 0;
 break;
 default:
      //Start the output at 50 to pass up values that could cause issues
      label -= 50;

      obj_mod.dummy = floor(label/20)-1;
      label -= (obj_mod.dummy+1)*20;
      obj_mod.packet = label;
 break;
}