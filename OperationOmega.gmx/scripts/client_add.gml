//Adds a new client to the client list
//////////////////////////////////////
//argument0 is the tcp port
//////////////////////////////////////
var client, mid, temp, free;
client = argument0;
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

//Add the client ports, ip, and mid to the temporary list
ds_list_add(temp, client);
ds_list_add(temp, mid);


//Add the temporary list to the client list
ds_list_add(global.clients, temp);

//Return the mid
return mid;