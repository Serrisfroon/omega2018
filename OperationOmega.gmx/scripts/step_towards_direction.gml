//Changes the object's direction to gradually rotate
//towards a given direction.
/////////////////////////////////////////////////////////////////
//argument0 is the desired end direction
//argument1 is the degrees to move towards the desired direction
//Returns the turn value(according to get_turn())
/////////////////////////////////////////////////////////////////
//Initializ variables
var endpoint, degree;
endpoint = argument0;
degree = argument1;

//If the current direction will pass up or meet the desired direction
//this step, set the direction equal to the desired direction
if(direction > endpoint-degree && direction < endpoint+degree)
{
 direction = endpoint;
 return 0; 
}
//Check clockwise halfway to make sure the 0-360 degree does not occur 
//between the end direction and the current direction.
//Check if the current direction lies within this range.
if(endpoint-180 >= 0 && endpoint-180 <= direction && endpoint >= direction)
{
 //Add the degrees to your current direction 
 direction += degree;
 return 2;
}
//Check counter-clockwise halfway to make sure the 0-360 degree does not occur 
//between the end direction and the current direction.
//Check if the current direction lies within this range.
if(endpoint+180 <= 360 && endpoint+180 > direction && endpoint < direction)
{
 //Subtract the degrees from your current direction
 direction -= degree;
 return 1;
}
//If the 0-360 degree occurs between the end direction and its clockwise halfway check...
if(endpoint-180 < 0)
 //Check counter-clockwise to see if the current direction does not fit there.
 //Check if the current direction falls before the 0-360 point
 if(endpoint+180 < direction || endpoint > direction)
 {
  //If either checks out, add the degrees to your current direction.
  direction += degree;
  return 2;
 }
//If the 0-360 degree occurs between the end direction and its counter-clockwise halfway check...
if(endpoint+180 > 360)
 //Check clockwise to see if the current direction does not fit there.
 //Check if the current direction falls before the 0-360 point
 if(endpoint-180 > direction || endpoint < direction)
 {
  //If either checks out, subtract the degrees to your current direction.
  direction -= degree;
  return 1;
 }