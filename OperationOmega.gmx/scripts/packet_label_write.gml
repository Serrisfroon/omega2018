//This script makes a label for the packet you are sending. It contains 
//The packet id along with the mid of the player who sent it.
////////////////////////////////////////////////////////////////////////
//argument0 = packet id
//argument1 = mid
////////////////////////////////////////////////////////////////////////
var packet, playerid, output;
packet = argument0;
playerid = argument1;
switch(packet)
{
 case CLIENT_DROP:
      output = CLIENT_DROP;
 break;
 case TIME_UP:
      output = TIME_UP;
 break;
 default:
      //Start the output at 50 to pass up values that could cause issues
      output = 50;

      output += (playerid+1)*20;
      output += packet;
 break;
}
writebyte(output,0);
update_ship_write();
