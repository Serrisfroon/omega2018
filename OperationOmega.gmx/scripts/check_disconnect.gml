var disi;
for(disi = 1; disi < 8; disi += 1)
{
    if(global.activated[disi] != 1)
        continue;
    if(playerdisconnect[disi] > -700)
        playerdisconnect[disi] += 1;
    if(playerdisconnect[disi] = 600)
    {
        //Get info from leaving player
        droppedname = global.playership[disi].thisname;
        //Drop the player and add the drop to the count
        client_drop(disi);
        //Destroy the removed player
        with(global.playership[disi])
         instance_destroy();
        //Create a dud to intercept remaining messages
        global.playership[disi] = instance_create(-2000, -2000, obj_dud);
        //Send a notice to your chat
        chatline_add(droppedname+" has been disconnected from the game.", c_maroon)
        

        //Add the player to the elimination count
        if(global.team[disi] = 1)
        {
            //Check if all of red team is eliminated
            if(global.redteam = global.redteamout)
            {
                //Send it to your chat
                chatline_add("Red Team has been eliminated.", c_maroon);
                lolcolor[3] = 1;
                chatline_add("Blue Team has won the match.", c_navy);
                lolcolor[4] = 2;
                if(global.team[global.mymid] = 1)
                {
                    global.outcome = 1;
                    obj_mod.announcement = "Operation Failed";
                }
                else
                {
                    global.outcome = 0;
                    obj_mod.announcement = "Operation Successful";
                }
                
                obj_mod.announcing  = 1;
                obj_mod.announcement_color = c_navy;
                obj_mod.announcealpha = 0;
            
                //Send the message to all clients
                clearbuffer(0);
                packet_label_write(5, disi);
                writebyte(lolcolor[3], 0);
                writestring(chatline[3], 0);
                writebyte(lolcolor[4], 0);
                writestring(chatline[4], 0);
                client_sendall(0, 0);
                //Set time until return to waiting room
                alarm[2] = 180;
            }
        }
        else
        {
            //Check if all of blue team is eliminated
            if(global.blueteam = global.blueteamout)
            {
                //Send it to your chat
                chatline_add("Blue Team has been eliminated.", c_navy);
                lolcolor[3] = 2;
                chatline_add("Red Team has won the match.", c_red);
                lolcolor[4] = 1;
                obj_mod.announcing  = 1;
                obj_mod.announcement_color = c_red;
                obj_mod.announcealpha = 0;
                if(global.team[global.mymid] = 2)
                {
                    global.outcome = 1;
                    obj_mod.announcement = "Operation Failed";
                }
                else
                {
                    global.outcome = 0;
                    obj_mod.announcement = "Operation Successful";
                }
                //Send the message to all clients
                clearbuffer(0);
                packet_label_write(5, disi);
                writebyte(lolcolor[3], 0);
                writestring(chatline[3], 0);
                writebyte(lolcolor[4], 0);
                writestring(chatline[4], 0);
                client_sendall(0, 0);
                //Set time until return to waiting room    
                alarm[2] = 180;
            }
        }

        //Relay the info to other players
        clearbuffer(0);
        writebyte(CLIENT_DROP, 0);
        writebyte(disi, 0);
        writestring(droppedname, 0);
        writestring(droppedname+" has been disconnected from the game.", 0) 
        client_sendall(0, 0);     
    }
}