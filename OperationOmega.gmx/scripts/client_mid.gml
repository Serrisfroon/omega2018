//Returns the mid of the client at position index
var index, mid;
index = argument0;
mid = -1;

//Find the multiplayer id in the client list
mid = ds_list_find_value(ds_list_find_value(global.clients, index), 1);
//return the mid, it will be negative if the index was invalid
return mid;