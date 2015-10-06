//Checks for the next free mid and returns it
//////////////////////////////////////
var mid, temp, free;
mid = 0;
temp = ds_list_create();

//Find an empty multiplayer id for the client to use
do
{
 //Reset the free flag and increase the mid
 free = true;
 mid += 1;
 if(global.activated[mid] = -1)
 {
  free = false;
  continue;
 }
 //Search all the clients in the list and make sure the
 //mid is not used.
 for(i = 0; i < ds_list_size(global.clients); i += 1)
 {
  if(mid == client_mid(i))
   free = false;
 }
}
until (free);

//Return the mid
return mid;