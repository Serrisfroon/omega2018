//Changes the start direction to the desired direction as long as
//it is within limit
/////////////////////////////////////////////////////////////////
//argument0 is the start direction
//argument1 is the desired end direction
//argument2 is the maximum change of direction
//Returns the changed direction
/////////////////////////////////////////////////////////////////
//Initialize variables
var startdirec, change, lolmax, gauge;
startdirec = argument0
change = argument1-argument0;
lolmax = argument2;

if(change > 180)
 change -= 360;
if(change < -180)
 change += 360;
 
 

if(lolmax <= abs(change))
{
 if(change < 0)
 {
  gauge = startdirec-lolmax;
  if(gauge < 0)
    gauge += 360;
 }
 else
 {
  gauge = startdirec+lolmax;
  if(gauge > 360)
    gauge -= 360;
 }
 return gauge;
}
else
 return argument1;

