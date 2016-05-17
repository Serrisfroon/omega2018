//ALL ARGUMENTS/RETURNS ARE REAL NUMBERS, UNLESS STATED OTHERWISE
/*
Script name: initpack V1.0
creates a queue, several other scripts need this.

Arguments: 
none

Returns:
none

Notes:
-initpack is only required once

_________________
Made by Safwat1995
http://safwat1995.webs.com

*/

global.dbg111=0;
global.dbgar[0]=0;
global.CRushed_bits=-1;
global.PACKq=ds_queue_create();
global.TotalBitsWritten=0;
