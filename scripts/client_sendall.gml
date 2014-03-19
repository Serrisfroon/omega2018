//Sends the message buffer to all clients except for
//the client specified by argument1 (optional) 
///////////////////////////////////////////////////////////////
//argument0 decides which type of sending(0 for tcp 1 for udp)
//argument1 specifies the blocked client
///////////////////////////////////////////////////////////////
var type, block;
type = argument0;
block = argument1;

switch(type)
{
 case 0:
      //Send the buffer via tcp
      for(i = 0; i < ds_list_size(global.clients); i +=1)
      {
       if(client_mid(i) != block)
        sendmessage(client_port(i),0,0,0);
      }
 break;
 case 1:
      //Send the buffer via udp
      for(i = 0; i < ds_list_size(global.clients); i +=1)
      {
       if(client_mid(i) != block)
        sendmessage(client_udpsock(i),client_udpip(i),client_udpport(i),0);
      }
 break;
}
