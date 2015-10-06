/*
Script name: convert_from_binary V1.0
Converts a decimal number into a binary number 

Arguments: 
0-Decimal number: The decimal number you'd like to convert(real)

Returns:
Returns the decimal number's binary equavilant(string)

_________________
Made by Safwat1995
http://safwat1995.webs.com

*/
numb=argument0;
bin="";
var first_loop;
first_loop=1;
while (numb!=0) 
{
    binvalue=1;
    binpos=0;
    to_insert="";
    while(binvalue*2<=numb)
    {
        binvalue*=2;
        binpos+=1;
    }
    if first_loop
    {
        first_loop=0;
        var ii;
        for(ii=0;ii<=binpos;ii+=1)
        {
        bin+="0";
        }
    }
    var Strl;
    Strl=string_length(bin);
    bin=string_delete(bin,Strl-binpos,1);
    bin=string_insert("1",bin,Strl-binpos);
    numb-=binvalue;
}
return bin;