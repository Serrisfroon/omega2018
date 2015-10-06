/*
Script name: bufferpack V1.0
Adds the finished packet to the buffer, making it ready for sendmessage.

Arguments: 
none

Returns:
Optional: Wasted bits - the number of bits that are not being used in the packet (0-7). 
                        if this is higher than 0, you can add some more data without increasing
                        the package size, BUT: if you add too much another byte might
                        be needed, and this number may increase.

Notes:
-Make sure you fill the package using packnum first

_________________
Made by Safwat1995
http://safwat1995.webs.com

*/
var tempbit,empty,Z;
empty=0;
while(empty==0)
{
    for(Z=0;Z<8;Z+=1)
    {
        if (ds_queue_empty(global.PACKq)==1 || empty==1)
        {
            empty=1;
            tempbit[Z]=0;
        }
        else
        {
            tempbit[Z]=ds_queue_dequeue(global.PACKq);
        }
    }        //1 start  //2start                                                                                                                            //2end //1end
    writebyte( buildbyte(real(tempbit[0]),real(tempbit[1]),real(tempbit[2]),real(tempbit[3]),real(tempbit[4]),real(tempbit[5]),real(tempbit[6]),real(tempbit[7]) ), 0  );
    if (ds_queue_empty(global.PACKq)==1)
    {
    exit;
    }     
}