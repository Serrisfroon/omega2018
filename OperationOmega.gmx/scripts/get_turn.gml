//Returns which rotation will reach the desired point fastest
//0 is returned if the current direction matches the desired direction
/////////////////////////////////////////////////////////////////
//argument0 is the desired end direction
//
/////////////////////////////////////////////////////////////////
//Initialize variables
var endpoint, turn;
endpoint = argument0;
turn = 0;

while(true)
{
if(direction > endpoint-2 && direction < endpoint+2)
 break;
//Check clockwise halfway to make sure the 0-360 degree does not occur 
//between the end direction and the current direction.
//Check if the current direction lies within this range.
if(endpoint-180 >= 0 && endpoint-180 <= direction && endpoint >= direction)
{
 turn = 2;
 break;
}
//Check counter-clockwise halfway to make sure the 0-360 degree does not occur 
//between the end direction and the current direction.
//Check if the current direction lies within this range.
if(endpoint+180 <= 360 && endpoint+180 > direction && endpoint < direction)
{
 turn = 1;
 break;
}
//If the 0-360 degree occurs between the end direction and its clockwise halfway check...
if(endpoint-180 < 0)
 //Check counter-clockwise to see if the current direction does not fit there.
 //Check if the current direction falls before the 0-360 point
 if(endpoint+180 < direction || endpoint > direction)
 {
  turn = 2;
  break;
 }
//If the 0-360 degree occurs between the end direction and its counter-clockwise halfway check...
if(endpoint+180 > 360)
 //Check clockwise to see if the current direction does not fit there.
 //Check if the current direction falls before the 0-360 point
 if(endpoint-180 > direction || endpoint < direction)
 {
  turn = 1;
  break;
 }
}
return turn
