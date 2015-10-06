/*
Script name: crush V1.1
adds a number into the package, make sure you use "clearpack" first.

Arguments: 
0-value: The value you would like to pack
1-max val: the maximum number your value can get
2-min val: the minimum number your value can get

Returns: 
optional: returns the number of bits used.
to save the most bandwidth, make sure the sum of all bits in a pack can be divided by 8.

Notes:
-IMPORTANT: the maximum and minimum numbers should be the same in "unpacknum"
-use a smaller maximum and a bigger minimum to save as much bits as possible 



_________________
Made by Safwat1995
http://safwat1995.webs.com

*/

if (argument2>argument0) //2 < 0 < 1
{
show_message('writenum error! argument 2 is larger than argument 0#this might cause game freeze/crash#script aborted.#argument0: '+string(argument0)+"#argument1: "+string(argument1)+"#argument2: "+string(argument2));
exit;
}
if (argument2>argument1)
{
show_message('writenum error! argument 2 is larger than argument 1#this might cause game freeze/crash#script aborted.#argument0: '+string(argument0)+"#argument1: "+string(argument1)+"#argument2: "+string(argument2));
exit;
}
if (argument0>argument1)
{
show_message('writenum error! argument 0 is larger than argument 1#this might cause game freeze/crash#script aborted.#argument0: '+string(argument0)+"#argument1: "+string(argument1)+"#argument2: "+string(argument2));;
exit;
}
var binaryvalue,NumberOfBits;
binaryvalue=convert_to_binary(argument0-argument2);
NumberOfBits=ceil(log2(argument1-argument2+1));
global.CRushed_bits=NumberOfBits;
global.TotalBitsWritten+=NumberOfBits;
while (string_length(binaryvalue)<NumberOfBits)
{
binaryvalue="0"+binaryvalue;
}
            /*if !variable_global_exists("dbg111")
            {
                global.dbg111=0; //you may comment out this code to see an array of variables, dbgar is the number, dbgar2 is it's binary equavilant
                global.dbgar[0]=0;
                global.dbgar2[0]=0;
            }
            global.dbgar[global.dbg111]=argument0;
            global.dbgar2[global.dbg111]=binaryvalue;
            global.dbg111+=1;*/
var Qpos;
Qpos=1;
while(Qpos<=string_length(binaryvalue))
{
ds_queue_enqueue(global.PACKq,string_copy(binaryvalue,Qpos,1));
Qpos+=1;
}
return NumberOfBits;