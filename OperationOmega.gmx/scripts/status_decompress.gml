//This function will decompress a variable that was storing the compressed
//values of the status variables.
//////////////////////////////////////////////////////////////////////////////////
//argument0 = compressed value
//global.playership[dummy].shieldup = shield status
//global.playership[dummy].smoke = smoke status
//global.playership[dummy].ship_status_hacked = hacker mine status
//global.playership[dummy].ship_status_shocked = shock missile status
//////////////////////////////////////////////////////////////////////////////////
var compress, saveshield;
compress = argument0;
saveshield = global.playership[dummy].shieldup;
      
if(compress > 32)
{
    compress -= 32;
    global.playership[dummy].shieldup = 1;
}
if(compress > 16)
{
    compress -= 16;
    global.playership[dummy].ship_status_hacked = 1;
}
if(compress > 8)
{
    compress -= 8;
    global.playership[dummy].ship_status_shocked = 1;
}
global.playership[dummy].smoke = compress-1;


if(saveshield = 1 && global.playership[dummy].shieldup = 0)
    repeat(10)
    {
        var piece;
        piece = instance_create(-30+random(60), -30+random(60), obj_shieldpart);
        piece.hurting = global.playership[dummy];
    }
