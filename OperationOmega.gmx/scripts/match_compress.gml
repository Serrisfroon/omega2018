//match_compress(ip, name, max players, players, mode, map, status);

var ip, name, maxplayers, players, mode, map, status, value;
//String
ip = argument0;
//String
name = argument1;
//Real, max 8
maxplayers = argument2;
//Real, max 8
players = argument3;
//Real, max 3
mode = argument4;
//Real, max 8
map = argument5;
//Real, max 1
status = argument6;

//Write the strings
writestring(ip,0);
writestring(name,0);
writestring(mode,0);
writestring(map,0);

//Initialize value
value = 0;

//Begin at player count
value += maxplayers;

//Add the current players
value += players*8;

//Add the mode
value += mode*64;

//Add the map
value += map*192;

//Add the status
value += status*1536;

//Write the compressed value
writeshort(value,0);