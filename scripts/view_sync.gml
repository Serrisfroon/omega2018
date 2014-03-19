//This script modifies the views of all rooms to match the resolution.
//Made into a script for ease of access
///////////////////////////////////////////////////////////////////////
//argument0 = current resolution id
//1 = 4:3  2 = 5:4  3 = 16:9  4 = 16:10
///////////////////////////////////////////////////////////////////////
var reso, rooms, width, height, i;
reso = argument0;
//This is the number of rooms in the game. It will need modified when more rooms are added.
rooms = 24;

//Find the width and height of the corresponding resolution
switch(reso)
{
 case 1:
      width = 640;
      height = 480;
 break;
 case 2:
      width = 640;
      height = 512;
 break;
 case 3:
      width = 854;
      height = 480;
 break;
 case 4:
      width = 768;
      height = 480;
 break;
}

//Change the view properties of all rooms to this new size
for(i = 0; i <= rooms; i += 1)
 room_set_view(i, 0, true, 0, 0, width, height, 0, 0, width, height, 32, 32, -1, -1, obj_ship);

