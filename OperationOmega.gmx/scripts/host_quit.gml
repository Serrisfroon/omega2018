//Will free all ports of the host
/////////////////////////////////////
for(i = 0; i < ds_list_size(global.clients); i +=1)
{
  closesocket(client_udpsock(i));
  closesocket(client_port(i));
}
closesocket(global.listen);
