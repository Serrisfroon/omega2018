/*
Script name: clearpack V1.0
clears the package and the buffer usually used before "packnum"

Arguments: 
none

Returns:
none

Notes:
-Make sure you have executed initpack first. (initpack is only required once)

_________________
Made by Safwat1995
http://safwat1995.webs.com

*/
clearbuffer(0);
ds_queue_clear(global.PACKq);
global.TotalBitsWritten=0;