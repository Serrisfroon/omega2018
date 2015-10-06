//This function compresses the three prediction variables into a single variable
//with a value 1-71. Because of this, 1 byte is sent for predictions in the 
//refresh packet, and all three predictions can be sent whenever any change
//////////////////////////////////////////////////////////////////////////////////
//argument0 = auto-turn prediction
//argument1 = force turn prediction
//argument2 = speed prediction
//argument3 = Primary firing variable
//////////////////////////////////////////////////////////////////////////////////
var auto, force, accel, firing, step;
auto = argument0;
force = argument1;
accel = argument2;
firing = argument3;
step = 0;

switch(firing)
{
 case 0:
      step = 0;
 break;
 case 1:
      step = 36;
 break;
}
switch(auto)
{
 case 0:
      step += 0;
 break;
 case 1:
      step += 12;
 break;
 case 2:
      step += 24;
 break;
}
switch(force)
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
}
switch(accel)
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
}
return step;