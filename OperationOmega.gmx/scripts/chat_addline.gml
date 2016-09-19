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
var iii, color_number, chat_action, mid_number;
for(iii = 0; iii < chat_length; iii++)
{
    chat_line[iii] = chat_line[iii+1];
    chat_color[iii] = chat_color[iii+1];
}
chat_line[chat_length] = argument0;
color_number = argument1;
chat_action = argument2;
mid_number = argument3;

audio_play_sound(snd_chatmessage, 1, 0);

switch(color_number)
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

switch(chat_action)
{
    case 1:
        //Send the message to clients
        clearbuffer(0);
        writebyte(11, 0);
        writebyte(mid_number, 0);;
        writestring(chat_line[chat_length], 0);
        writebyte(color_number, 0);
        client_sendall(0, 0);
    break;
    case 2:
        clearbuffer(0);
        writebyte(11, 0);
        writebyte(mid_number, 0);
        writestring(chat_line[chat_length], 0);
        writebyte(color_number, 0);
        sendmessage(global.host, "", 0, 0);
    break;
}
