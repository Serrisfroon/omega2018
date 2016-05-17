//Returns the ip address of the client at position index
var index, ip;
index = argument0;
ip = "";

//Find the ip in the client list
ip = ds_list_find_value(ds_list_find_value(global.clients, index), 3);

//Return the ip, it will be empty if the index was invalid
return ip;
