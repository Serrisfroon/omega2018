//Drops the player from game and modifies teams to adjust to it
/////////////////////////////////////////////////////////////
//argument0 is the mid of the player being dropped
/////////////////////////////////////////////////////////////
var droppedplayer;
droppedplayer = argument0;

//Deactivate this player
global.activated[droppedplayer] = 0;
//Remove the player from the client list
client_remove(droppedplayer);

//Update teams
if(global.team[droppedplayer] = 1)
  {
   //Update team numbers
   global.redteam -= 1;
  }
  else 
  { 
   //Handle name movement
   global.blueteam -= 1;
  }