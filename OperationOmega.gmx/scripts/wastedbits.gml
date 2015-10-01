//ALL ARGUMENTS/RETURNS ARE REAL NUMBERS, UNLESS STATED OTHERWISE
/*
Script name: wastedbits

Returns:
Returns how many bits are not used in the pack
example: you wrote 15 bits, bits must be sent in chunks of 8, so 16 bits are sent. 1 bit was wasted and not used(wasted bits are filled with the value 0).
        in our example, wastedbits returns 1.
        To get rid of wasted bits, you must reduce/increase data until it fits in a chunk of 8, however, even if you choose to keep them, the scripts will work properly.
_________________
Made by Safwat1995
http://safwat1995.webs.com

*/
return global.TotalBitsWritten mod 8;
