//match_decompress(value);

var value, divisor;

//Read the compressed value
value = argument0;

//Find the status
if(value > 1536)
 datastatus[i] = 1;
value -= 1536;

//Find the map
divisor = floor(value/192);
datamap[i] = divisor;
value -= divisor*192;

//Find the mode
divisor = floor(value/64);
datamode[i] = divisor;
value -= divisor*64;

//Find the players
divisor = floor(value/8);
dataplayercount[i] = divisor;
value -= divisor*8;

//The remainder is the max players
datamaxplayers[i] = value;
