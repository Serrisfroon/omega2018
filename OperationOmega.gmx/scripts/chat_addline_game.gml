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
with(obj_chat)
{
    var iii, color_number, chat_action, mid_number;
    for(iii = chat_lines+1; iii > 1; iii -= 1)
    {
        chat_line_message[iii] = chat_line_message[iii-1];
        chat_line_color[iii] = chat_line_color[iii-1];
        chat_line_x[iii] = chat_line_x[iii-1];
        chat_line_life[iii] = chat_line_life[iii-1];
        chat_line_alpha[iii] = chat_line_alpha[iii-1];
    }
    
    chat_line_message[1] = argument0;
    chat_line_x[1] = -string_length(chat_line_message[1])-20;
    chat_line_life[1] = 600;
    chat_line_alpha[1] = 1;
    color_number = argument1;
    chat_action = argument2;
    mid_number = argument3;
    if(chat_lines < 10)
    chat_lines += 1;
    
    audio_play_sound(snd_chatmessage, 1, 0);
    
    switch(color_number)
    {
        case 0:
            chat_line_color[1] = c_white;
        break;
        case 1:
             chat_line_color[1] = c_red;   
        break;
        case 2:
            chat_line_color[1] = c_blue;    
        break;
        case 3:
            chat_line_color[1] = make_color_rgb(0, 255, 131);    
        break;
        case 4:
            chat_line_color[1] = c_aqua;    
        break;
    }
    
    switch(chat_action)
    {
        case 1:
            //Send the message to clients
            clearbuffer(0);
            writebyte(11, 0);
            writebyte(mid_number, 0);;
            writestring(chat_line[1], 0);
            writebyte(color_number, 0);
            client_sendall(0, 0);
        break;
        case 2:
            clearbuffer(0);
            writebyte(11, 0);
            writebyte(mid_number, 0);
            writestring(chat_line[1], 0);
            writebyte(color_number, 0);
            sendmessage(global.host, "", 0, 0);
        break;
    }
}
