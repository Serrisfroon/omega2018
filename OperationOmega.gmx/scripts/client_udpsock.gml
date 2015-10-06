//Returns the udp socket of the client at position index
var index, sock;
index = argument0;
sock = -1;

//Find the socket in the client list
sock = ds_list_find_value(ds_list_find_value(global.clients, index), 2);

//Return the socket, it will be negative if the index was invalid
return sock;