/*
Script name: convert_from_binary V1.0
Converts a decimal number into a binary number 

Arguments: 
0-the binary number(STRING)

Returns:
Returns the binary number's decimal equavilant(real)

_________________
Made by Safwat1995
http://safwat1995.webs.com

*/
var binlength,realnum;
binlength=string_length(argument0);
orglength=binlength+1;
realnum=0;
while(binlength>0)
{
realnum+=real(string_copy(argument0,orglength-binlength,1))*power(2,binlength-1);
binlength-=1;
}
return realnum;