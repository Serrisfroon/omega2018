//This function will decompress a variable that was storing the compressed
//values of the prediction variables. It will set the values to the arguments given
//////////////////////////////////////////////////////////////////////////////////
//argument0 = compressed value
//global.playership[dummy].turning = force turn prediction
//global.playership[dummy].speeding = speed prediction
//global.playership[dummy].multiplayer_primary_fire_flag = Primary firing variable
//////////////////////////////////////////////////////////////////////////////////
var compress;
compress = argument0
global.playership[dummy].turning = 0;
global.playership[dummy].speeding = 0;
global.playership[dummy].multiplayer_primary_fire_flag = false;
if(compress > 12)
{
      global.playership[dummy].multiplayer_primary_fire_flag = true;
      compress -= 12;
}
if(compress > 8)
{
      global.playership[dummy].turning = 2;
      compress -= 8;
}
if(compress > 4)
{
      global.playership[dummy].turning = 1;
      compress -= 4;
}

switch(compress)
{
    case 1:
         global.playership[dummy].speeding = 0;
    break;
    case 2:
         global.playership[dummy].speeding = 1;
    break;
    case 3:
         global.playership[dummy].speeding = 2;
    break;
    case 4:
         global.playership[dummy].speeding = 3;
    break;
}
