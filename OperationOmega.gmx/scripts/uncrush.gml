/*
Script name: uncrush V1.0
Takes out one number out of the pack and returns it.

Arguments: 
maximum value- The maximum value this number might be 
minimum value- The minimum value this number might be

Returns:
Takes out one number out of the pack and returns it.

_________________
Made by Safwat1995
http://safwat1995.webs.com

*/
if (argument1>argument0)
{
show_message('readnum error! argument 0 is larger than argument 1#this might cause game freeze/crash#script aborted.#argument0: '+string(argument0)+"#argument1: "+string(argument1));
exit;
}
var readleft,binarynumber;
readleft=string_length(convert_to_binary(argument0-argument1)); 
global.CRushed_bits=readleft;
binarynumber="";                                      
while(readleft>0)
{
if global.UnpackPos>=0
    {
        binarynumber+=string(readbit(global.UnpackByte,global.UnpackPos));
        global.UnpackPos-=1;
        readleft-=1;
    }
else uncrushbegin();
}
            global.dbgar[global.dbg111]=convert_from_binary(binarynumber);
            global.dbg111+=1;
return convert_from_binary(binarynumber)+argument1;
