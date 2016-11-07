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
var _status_player = global.playership[dummy];
saveshield = _status_player.shieldup;
_status_player.shieldup = 0;
_status_player.ship_status_hacked = 0;
_status_player.ship_status_shocked = 0;
      
if(compress > 32)
{
    compress -= 32;
    _status_player.shieldup = 1;
}
if(compress > 16)
{
    compress -= 16;
    _status_player.ship_status_hacked = 1;
}
if(compress > 8)
{
    compress -= 8;
    _status_player.ship_status_shocked = 1;
}
_status_player.smoke = compress-1;


if(saveshield = 1 && _status_player.shieldup = 0)
{
    var broken;
    broken = instance_create(0, 0, obj_shield_break);
    broken.hurting = _status_player;
    broken.hitdir = _status_player.direction;
}
if(saveshield = 0 && _status_player.shieldup = 1)
{
    var broken;
    broken = instance_create(0, 0, obj_shield_regain);
    broken.hurting = _status_player;
}
