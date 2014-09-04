//Returns the port of the client at position index
var index, port;
index = argument0;
port = -1;

//Find the port in the client list
port = ds_list_find_value(ds_list_find_value(global.clients, index), 0);

//Return the port, it will be negative if the index was invalid
return port;