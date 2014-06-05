if(global.master = true)
{
    if(playerdisconnect[dummy] > -700)
        playerdisconnect[dummy] = 0;
    global.playership[dummy].direction = readbyte(0)*1.5;
    global.playership[dummy].facedir = readbyte(0)*1.5;
    global.playership[dummy].x = readshort(0);
    global.playership[dummy].y = readshort(0);
    global.playership[dummy].speed = readbyte(0)/10;
    decomp = readbyte(0);
    prediction_decompress(decomp);
    if(global.playership[dummy].shooting = 1)
    {
        global.playership[dummy].newdir = readbyte(0)*1.5;
        switch(global.playerprimary[dummy])
        {
            case 4:
                 global.playership[dummy].flankcurve = readbyte(0);
            break;
            case 6:
                 global.playership[dummy].crossfiredist = readbyte(0)*10;
            break;
            case 7:
                 global.playership[dummy].siphontarget = readbyte(0);
            break;
        }         
    }    
}
else
{
    for(i = 0; i < 8; i += 1)
    {
        if(i != 0) 
        {
            //Ignore this cycle if the player slot is not activated
            if(global.activated[i] <= 0) continue;
            //Read the cycle if it is your player slot, and put it into a junk variable.
            if(i = global.mymid)
            {
                holdvar = readbyte(0);
                holdvar = readbyte(0);
                holdvar = readshort(0);
                holdvar = readshort(0);
                holdvar = readbyte(0);
                holdvar = readbyte(0);
                //Check if the compressed prediction holds shooting as 1
                if(holdvar >= 28)
                {
                    holdvar = readbyte(0);
                    switch(global.primary)
                    {          
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                            holdvar = readbyte(0);
                        break;
                    }
                }
                continue;
            }
        }             
        if(global.playership[i] = obj_dud) continue;
        global.playership[i].direction = readbyte(0)*1.5;
        global.playership[i].facedir = readbyte(0)*1.5;
        global.playership[i].x = readshort(0);
        global.playership[i].y = readshort(0);
        global.playership[i].speed = readbyte(0)/10;
        dummy = i;
        decomp = readbyte(0);
        prediction_decompress(decomp);
        if(global.playership[i].shooting = 1)
        {
            global.playership[i].newdir = readbyte(0)*1.5;
            switch(global.playerprimary[i])
            {          
                 case 4:
                      global.playership[i].flankcurve = readbyte(0);
                 break;
                 case 6:
                      global.playership[i].crossfiredist = readbyte(0)*10;
                 break;
                 case 7:
                      global.playership[i].siphontarget = readbyte(0);
                 break;
            }
        }
    }
}
