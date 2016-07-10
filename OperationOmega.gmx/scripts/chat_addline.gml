//argument0 = string for message
//argmuent1 = bit for color
    //0 = white
    //1 = red
    //2 = blue
    //3 = green
    //4 = aqua
//argument2 = bit for sendchat
    //0 = No communication
    //1 = Host to clients
    //2 = Client to host
//argument3 = bit for mid
var iii;
for(iii = 0; iii < chat_length; iii++)
{
    chat_line[iii] = chat_line[iii+1];
    chat_color[iii] = chat_color[iii+1];
}
chat_line[chat_length] = argument0;

audio_play_sound(snd_chatmessage, 1, 0);

switch(argument1)
{
    case 0:
        chat_color[chat_length] = c_white;
    break;
    case 1:
         chat_color[chat_length] = c_red;   
    break;
    case 2:
        chat_color[chat_length] = c_blue;    
    break;
    case 3:
        chat_color[chat_length] = make_color_rgb(0, 255, 131);    
    break;
    case 4:
        chat_color[chat_length] = c_aqua;    
    break;
}

switch(argument2)
{
    case 1:
        //Send the message to clients
        clearbuffer(0);
        writebyte(11, 0);
        writebyte(argument3, 0);;
        writestring(chat_line[chat_length], 0);
        writebyte(argument1, 0);
        client_sendall(0, 0);
    break;
    case 2:
        clearbuffer(0);
        writebyte(11, 0);
        writebyte(argument3, 0);
        writestring(chat_line[chat_length], 0);
        writebyte(argument1, 0);
        sendmessage(global.host, "", 0, 0);
    break;
}
