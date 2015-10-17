//This function will decompress a variable that was storing the compressed
//values of the status variables.
//////////////////////////////////////////////////////////////////////////////////
//argument0 = compressed value
//global.playership[dummy].shieldup = shield status
//global.playership[dummy].smoke = smoke status
//global.playership[dummy].hacked = hacker mine status
//global.playership[dummy].shocked = shock missile status
//////////////////////////////////////////////////////////////////////////////////
var compress, saveshield;
compress = argument0;
saveshield = global.playership[dummy].shieldup;
      
global.playership[dummy].beserk = 0;
if(compress > 112) 
{
 global.playership[dummy].beserk = 1;
 compress -= 112;
}
global.playership[dummy].chained = 0;
if(compress > 56) 
{
 global.playership[dummy].chained = 1;
 compress -= 56;
}
switch(compress)
{
 case 1:
      global.playership[dummy].shieldup = 0;
      global.playership[dummy].smoke = 0;
      global.playership[dummy].hacked = 0;
      global.playership[dummy].shocked = 0;
 break;
 case 2:
      global.playership[dummy].shieldup = 0;
      global.playership[dummy].smoke = 0;
      global.playership[dummy].hacked = 0;
      global.playership[dummy].shocked = 1;
 break;
 case 3:
      global.playership[dummy].shieldup = 0;
      global.playership[dummy].smoke = 0;
      global.playership[dummy].hacked = 1;
      global.playership[dummy].shocked = 0;
 break;
 case 4:
      global.playership[dummy].shieldup = 0;
      global.playership[dummy].smoke = 0;
      global.playership[dummy].hacked = 1;
      global.playership[dummy].shocked = 1;
 break;
 case 5:
      global.playership[dummy].shieldup = 0;
      global.playership[dummy].smoke = 1;
      global.playership[dummy].hacked = 0;
      global.playership[dummy].shocked = 0;
 break;
 case 6:
      global.playership[dummy].shieldup = 0;
      global.playership[dummy].smoke = 1;
      global.playership[dummy].hacked = 0;
      global.playership[dummy].shocked = 1;
 break;
 case 7:
      global.playership[dummy].shieldup = 0;
      global.playership[dummy].smoke = 1;
      global.playership[dummy].hacked = 1;
      global.playership[dummy].shocked = 0;
 break;
 case 8:
      global.playership[dummy].shieldup = 0;
      global.playership[dummy].smoke = 1;
      global.playership[dummy].hacked = 1;
      global.playership[dummy].shocked = 1;
 break;
 case 9:
      global.playership[dummy].shieldup = 0;
      global.playership[dummy].smoke = 2;
      global.playership[dummy].hacked = 0;
      global.playership[dummy].shocked = 0;
 break;
 case 10:
      global.playership[dummy].shieldup = 0;
      global.playership[dummy].smoke = 2;
      global.playership[dummy].hacked = 0;
      global.playership[dummy].shocked = 1;
 break;
 case 11:
      global.playership[dummy].shieldup = 0;
      global.playership[dummy].smoke = 2;
      global.playership[dummy].hacked = 1;
      global.playership[dummy].shocked = 0;
 break;
 case 12:
      global.playership[dummy].shieldup = 0;
      global.playership[dummy].smoke = 2;
      global.playership[dummy].hacked = 1;
      global.playership[dummy].shocked = 1;
 break;
 case 13:
      global.playership[dummy].shieldup = 0;
      global.playership[dummy].smoke = 3;
      global.playership[dummy].hacked = 0;
      global.playership[dummy].shocked = 0;
 break;
 case 14:
      global.playership[dummy].shieldup = 0;
      global.playership[dummy].smoke = 3;
      global.playership[dummy].hacked = 0;
      global.playership[dummy].shocked = 1;
 break;
 case 15:
      global.playership[dummy].shieldup = 0;
      global.playership[dummy].smoke = 3;
      global.playership[dummy].hacked = 1;
      global.playership[dummy].shocked = 0;
 break;
 case 16:
      global.playership[dummy].shieldup = 0;
      global.playership[dummy].smoke = 3;
      global.playership[dummy].hacked = 1;
      global.playership[dummy].shocked = 1;
 break;
 case 17:
      global.playership[dummy].shieldup = 0;
      global.playership[dummy].smoke = 4;
      global.playership[dummy].hacked = 0;
      global.playership[dummy].shocked = 0;
 break;
 case 18:
      global.playership[dummy].shieldup = 0;
      global.playership[dummy].smoke = 4;
      global.playership[dummy].hacked = 0;
      global.playership[dummy].shocked = 1;
 break;
 case 19:
      global.playership[dummy].shieldup = 0;
      global.playership[dummy].smoke = 4;
      global.playership[dummy].hacked = 1;
      global.playership[dummy].shocked = 0;
 break;
 case 20:
      global.playership[dummy].shieldup = 0;
      global.playership[dummy].smoke = 4;
      global.playership[dummy].hacked = 1;
      global.playership[dummy].shocked = 1;
 break;
 case 21:
      global.playership[dummy].shieldup = 0;
      global.playership[dummy].smoke = 5;
      global.playership[dummy].hacked = 0;
      global.playership[dummy].shocked = 0;
 break;
 case 22:
      global.playership[dummy].shieldup = 0;
      global.playership[dummy].smoke = 5;
      global.playership[dummy].hacked = 0;
      global.playership[dummy].shocked = 1;
 break;
 case 23:
      global.playership[dummy].shieldup = 0;
      global.playership[dummy].smoke = 5;
      global.playership[dummy].hacked = 1;
      global.playership[dummy].shocked = 0;
 break;
 case 24:
      global.playership[dummy].shieldup = 0;
      global.playership[dummy].smoke = 5;
      global.playership[dummy].hacked = 1;
      global.playership[dummy].shocked = 1;
 break;
 case 25:
      global.playership[dummy].shieldup = 0;
      global.playership[dummy].smoke = 6;
      global.playership[dummy].hacked = 0;
      global.playership[dummy].shocked = 0;
 break;
 case 26:
      global.playership[dummy].shieldup = 0;
      global.playership[dummy].smoke = 6;
      global.playership[dummy].hacked = 0;
      global.playership[dummy].shocked = 1;
 break;
 case 27:
      global.playership[dummy].shieldup = 0;
      global.playership[dummy].smoke = 6;
      global.playership[dummy].hacked = 1;
      global.playership[dummy].shocked = 0;
 break;
 case 28:
      global.playership[dummy].shieldup = 0;
      global.playership[dummy].smoke = 6;
      global.playership[dummy].hacked = 1;
      global.playership[dummy].shocked = 1;
 break;
 case 29:
      global.playership[dummy].shieldup = 1;
      global.playership[dummy].smoke = 0;
      global.playership[dummy].hacked = 0;
      global.playership[dummy].shocked = 0;
 break;
 case 30:
      global.playership[dummy].shieldup = 1;
      global.playership[dummy].smoke = 0;
      global.playership[dummy].hacked = 0;
      global.playership[dummy].shocked = 1;
 break;
 case 31:
      global.playership[dummy].shieldup = 1;
      global.playership[dummy].smoke = 0;
      global.playership[dummy].hacked = 1;
      global.playership[dummy].shocked = 0;
 break;
 case 32:
      global.playership[dummy].shieldup = 1;
      global.playership[dummy].smoke = 0;
      global.playership[dummy].hacked = 1;
      global.playership[dummy].shocked = 1;
 break;
 case 33:
      global.playership[dummy].shieldup = 1;
      global.playership[dummy].smoke = 1;
      global.playership[dummy].hacked = 0;
      global.playership[dummy].shocked = 0;
 break;
 case 34:
      global.playership[dummy].shieldup = 1;
      global.playership[dummy].smoke = 1;
      global.playership[dummy].hacked = 0;
      global.playership[dummy].shocked = 1;
 break;
 case 35:
      global.playership[dummy].shieldup = 1;
      global.playership[dummy].smoke = 1;
      global.playership[dummy].hacked = 1;
      global.playership[dummy].shocked = 0;
 break;
 case 36:
      global.playership[dummy].shieldup = 1;
      global.playership[dummy].smoke = 1;
      global.playership[dummy].hacked = 1;
      global.playership[dummy].shocked = 1;
 break;
 case 37:
      global.playership[dummy].shieldup = 1;
      global.playership[dummy].smoke = 2;
      global.playership[dummy].hacked = 0;
      global.playership[dummy].shocked = 0;
 break;
 case 38:
      global.playership[dummy].shieldup = 1;
      global.playership[dummy].smoke = 2;
      global.playership[dummy].hacked = 0;
      global.playership[dummy].shocked = 1;
 break;
 case 39:
      global.playership[dummy].shieldup = 1;
      global.playership[dummy].smoke = 2;
      global.playership[dummy].hacked = 1;
      global.playership[dummy].shocked = 0;
 break;
 case 40:
      global.playership[dummy].shieldup = 1;
      global.playership[dummy].smoke = 2;
      global.playership[dummy].hacked = 1;
      global.playership[dummy].shocked = 1;
 break;
 case 41:
      global.playership[dummy].shieldup = 1;
      global.playership[dummy].smoke = 3;
      global.playership[dummy].hacked = 0;
      global.playership[dummy].shocked = 0;
 break;
 case 42:
      global.playership[dummy].shieldup = 1;
      global.playership[dummy].smoke = 3;
      global.playership[dummy].hacked = 0;
      global.playership[dummy].shocked = 1;
 break;
 case 43:
      global.playership[dummy].shieldup = 1;
      global.playership[dummy].smoke = 3;
      global.playership[dummy].hacked = 1;
      global.playership[dummy].shocked = 0;
 break;
 case 44:
      global.playership[dummy].shieldup = 1;
      global.playership[dummy].smoke = 3;
      global.playership[dummy].hacked = 1;
      global.playership[dummy].shocked = 1;
 break;
 case 45:
      global.playership[dummy].shieldup = 1;
      global.playership[dummy].smoke = 4;
      global.playership[dummy].hacked = 0;
      global.playership[dummy].shocked = 0;
 break;
 case 46:
      global.playership[dummy].shieldup = 1;
      global.playership[dummy].smoke = 4;
      global.playership[dummy].hacked = 0;
      global.playership[dummy].shocked = 1;
 break;
 case 47:
      global.playership[dummy].shieldup = 1;
      global.playership[dummy].smoke = 4;
      global.playership[dummy].hacked = 1;
      global.playership[dummy].shocked = 0;
 break;
 case 48:
      global.playership[dummy].shieldup = 1;
      global.playership[dummy].smoke = 4;
      global.playership[dummy].hacked = 1;
      global.playership[dummy].shocked = 1;
 break;
 case 49:
      global.playership[dummy].shieldup = 1;
      global.playership[dummy].smoke = 5;
      global.playership[dummy].hacked = 0;
      global.playership[dummy].shocked = 0;
 break;
 case 50:
      global.playership[dummy].shieldup = 1;
      global.playership[dummy].smoke = 5;
      global.playership[dummy].hacked = 0;
      global.playership[dummy].shocked = 1;
 break;
 case 51:
      global.playership[dummy].shieldup = 1;
      global.playership[dummy].smoke = 5;
      global.playership[dummy].hacked = 1;
      global.playership[dummy].shocked = 0;
 break;
 case 52:
      global.playership[dummy].shieldup = 1;
      global.playership[dummy].smoke = 5;
      global.playership[dummy].hacked = 1;
      global.playership[dummy].shocked = 1;
 break;
 case 53:
      global.playership[dummy].shieldup = 1;
      global.playership[dummy].smoke = 6;
      global.playership[dummy].hacked = 0;
      global.playership[dummy].shocked = 0;
 break;
 case 54:
      global.playership[dummy].shieldup = 1;
      global.playership[dummy].smoke = 6;
      global.playership[dummy].hacked = 0;
      global.playership[dummy].shocked = 1;
 break;
 case 55:
      global.playership[dummy].shieldup = 1;
      global.playership[dummy].smoke = 6;
      global.playership[dummy].hacked = 1;
      global.playership[dummy].shocked = 0;
 break;
 case 56:
      global.playership[dummy].shieldup = 1;
      global.playership[dummy].smoke = 6;
      global.playership[dummy].hacked = 1;
      global.playership[dummy].shocked = 1;
 break;

}

if(saveshield = 1 && global.playership[dummy].shieldup = 0)
    repeat(10)
    {
        var piece;
        piece = instance_create(-30+random(60), -30+random(60), obj_shieldpart);
        piece.hurting = global.playership[dummy];
    }