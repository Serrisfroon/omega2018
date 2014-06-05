if(global.master = true)
{
    writebyte(obj_ship.direction/1.5, 0);
    writebyte(obj_ship.facedir/1.5, 0);
    if(obj_ship.armor > 0 || obj_ship.beserk = 1)
    {
        writeshort(obj_ship.x, 0);
        writeshort(obj_ship.y, 0);
    }
    else
    {
        writeshort(-1000, 0);
        writeshort(-1000, 0);
    }
    
    writebyte(obj_ship.speed*10, 0);
    writebyte(prediction_compress(0, obj_ship.predictturn, obj_ship.predictspeed, obj_ship.nowshoot), 0);
    if(obj_ship.nowshoot = 1)
    {
        writebyte(obj_ship.newdir/1.5, 0);
        switch(global.primary)
        {
            case 4:
                //Find out which ship you are targetting
                if(obj_mod.foundtarget <= -1)
                 testtarget = 8;
                else
                {
                    testtarget = -1;
                    while(true)
                    {
                        testtarget+=1;
                        if(testtarget != global.mymid)
                            if(global.playership[testtarget] = obj_mod.foundtarget)
                                break;
                    }
                }
                writebyte(testtarget, 0);
            break;
            case 6:
                 writebyte(point_distance(obj_ship.x, obj_ship.y, mouse_x, mouse_y)/10, 0);
            break;
            case 7:
                 if(obj_mod.foundtarget != -1)
                    writebyte(obj_mod.foundtarget.mid, 0);
                 else
                    writebyte(10, 0);
            break;
        }
    }
    for(i = 1; i < 8; i += 1)
    {
        if(global.activated[i] <= 0) continue;
        if(global.playership[i] = obj_dud) continue;
        writebyte(global.playership[i].direction/1.5, 0);
        writebyte(global.playership[i].facedir/1.5, 0);
        writeshort(global.playership[i].x, 0);
        writeshort(global.playership[i].y, 0);
        writebyte(global.playership[i].speed*10, 0);
        writebyte(prediction_compress(0, global.playership[i].turning, global.playership[i].speeding, global.playership[i].shooting), 0);
        if(global.playership[i].shooting = 1)
        {
            writebyte(global.playership[i].newdir/1.5, 0);
            switch(global.playerprimary[i])
            {
                case 4:
                     writebyte(global.playership[i].flankcurve, 0);
                break;
                case 6:
                     writebyte(global.playership[i].crossfiredist, 0);
                break;
                case 7:
                     writebyte(global.playership[i].siphontarget, 0);
                break;
            }
        }
    }
}
else
{
    writebyte(obj_ship.direction/1.5, 0);
    writebyte(obj_ship.facedir/1.5, 0);
    writeshort(obj_ship.x, 0);
    writeshort(obj_ship.y, 0);
    writebyte(obj_ship.speed*10, 0);
    writebyte(prediction_compress(0, obj_ship.predictturn, obj_ship.predictspeed, obj_ship.nowshoot), 0);
    if(obj_ship.nowshoot = 1)
    {
        writebyte(obj_ship.newdir/1.5, 0);
        switch(global.primary)
        {
            case 4:
                //Find out which ship you are targetting
                if(obj_mod.foundtarget <= -1)
                 testtarget = 8;
                else
                {
                     testtarget = -1;
                     while(true)
                     {
                        testtarget+=1;
                        if(testtarget != global.mymid)
                            if(global.playership[testtarget] = obj_mod.foundtarget)
                                break;
                     }
                }
                writebyte(testtarget, 0);
            break;
            case 6:
                 writebyte(point_distance(obj_ship.x, obj_ship.y, mouse_x, mouse_y)/10, 0);
            break;
            case 7:
                 if(obj_mod.foundtarget != -1)
                  writebyte(obj_mod.foundtarget.mid, 0);
                 else
                  writebyte(10, 0);
            break;
        }
    }
}
