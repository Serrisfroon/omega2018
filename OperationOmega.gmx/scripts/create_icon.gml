//create_icon(sprite, speed1, speed2, dist1, dist2, selection);
var tile;
tile = instance_create(x, y, obj_icon_option);
tile.sprite_index = argument0;
tile.vspeed = argument1;
tile.alarm[0] = argument3/argument1;
tile.actionspeed[0] = argument1;
tile.actionspeed[1] = argument2;
tile.actiondist[0] = argument3;
tile.actiondist[1] = argument4;
tile.giveselection = argument5;
tile.owner = id;

switch(tile.owner.object_index)
{
    case obj_chooseprimary:
        tile.display = tile.giveselection-1;    
    break;
    case obj_choosesecondary:
        if(tile.owner.secondnumber = 4 && tile.giveselection > 30)
        {
            tile.display = tile.giveselection-30;
        }
        else
        switch(tile.owner.weapontype)
        {
            case 0:
                tile.display = tile.giveselection-1;    
            break;
            case 1:
                switch(tile.giveselection)
                {
                    case 1:
                        tile.display = 0;            
                    break;
                    case 2:
                        tile.display = 1;            
                    break;
                    case 3:
                        tile.display = 8;            
                    break;
                    case 4:
                        tile.display = 2;            
                    break;
                    case 5:
                        tile.display = 9;            
                    break;
                    case 6:
                        tile.display = 13;            
                    break;
                    case 7:
                        tile.display = 3;            
                    break;
                    case 8:
                        tile.display = 4;            
                    break;
                    case 9:
                        tile.display = 10;            
                    break;
                    case 10:
                        tile.display = 5;            
                    break;
                    case 11:
                        tile.display = 7;            
                    break;
                    case 12:
                        tile.display = 12;            
                    break;
                    case 13:
                        tile.display = 14;            
                    break;
                    case 14:
                        tile.display = 6;            
                    break;
                    case 15:
                        tile.display = 11;            
                    break;
                }
            break;
        }
    break;
    
}