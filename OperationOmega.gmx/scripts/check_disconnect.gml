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
        chat_addline_game(droppedname+" has been disconnected from the game.", global.team[disi], 0, disi)
        

        //Add the player to the elimination count
        if(global.team[disi] = 1)
        {
            //Check if all of red team is eliminated
            if(global.redteam = global.redteamout)
            {
                //Send it to your chat
                chat_addline_game("Red Team has been eliminated.", 1, 0, disi)
                chat_addline_game("Blue Team has won the match.", 2, 0, disi)
                if(global.team[global.mymid] = 1)
                {
                    global.outcome = 1;
                    obj_mod.announcement_message = "Operation Failed";
                }
                else
                {
                    global.outcome = 0;
                    obj_mod.announcement_message = "Operation Successful";
                }
                
                obj_mod.announcement_stage  = 1;
                obj_mod.announcement_color = c_navy;
                obj_mod.announcement_alpha = 0;
            
                //Hold the eliminated team value
                var team_eliminated = 1;
                //Set time until returning to waiting room
                alarm[2] = 180;
                //Send the message to all clients
                clearbuffer(0);
                packet_label_write(5, mid);
                writebyte(team_eliminated, 0);
                client_sendall(0, 0);
            }
        }
        else
        {
            //Check if all of blue team is eliminated
            if(global.blueteam = global.blueteamout)
            {
                //Send it to your chat
                chat_addline_game("Blue Team has been eliminated.", 2, 0, disi)
                chat_addline_game("Red Team has won the match.", 1, 0, disi)
                
                obj_mod.announcement_stage  = 1;
                obj_mod.announcement_color = c_red;
                obj_mod.announcement_alpha = 0;
                if(global.team[global.mymid] = 2)
                {
                    global.outcome = 1;
                    obj_mod.announcement_message = "Operation Failed";
                }
                else
                {
                    global.outcome = 0;
                    obj_mod.announcement_message = "Operation Successful";
                }
                //Hold the eliminated team value
                var team_eliminated = 2;
                //Set time until returning to waiting room
                alarm[2] = 180;
                //Send the message to all clients
                clearbuffer(0);
                packet_label_write(5, mid);
                writebyte(team_eliminated, 0);
                client_sendall(0, 0);
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
