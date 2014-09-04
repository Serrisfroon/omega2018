//Removes the client with the matching multiplayer id from
//the client list
var mid;
mid = argument0;

//Loop through the clients until we find a matching one
for(i = 0; i < ds_list_size(global.clients); i += 1)
{
 if(client_mid(i) == mid)
 {
  closesocket(client_port(i));
  ds_list_delete(global.clients, i);
  break;
 }
}
