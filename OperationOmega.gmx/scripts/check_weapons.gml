for(i = 1; i <= 4; i += 1)
{
    switch(global.secondary[i])
    {
        case 5:     
           if(obj_player.energy < global.secondary_cost[i] || obj_player.speed > 0)
               weapon_available_color[i] = c_dkgray;   
           else
               if(weapon_available_color[i] = c_dkgray)
               {     
                   weapon_available_color[i] = c_white;
                   instance_create((i-1)*40+18, 0, obj_weaponflash);
               }
        break;
        case 1:     
        case 2:     
        case 3:     
        case 4:     
        case 6:     
        case 7:     
        case 8:     
        case 9:     
        case 10:     
        case 11:     
        case 12:     
        case 13:     
        case 14:     
        case 15:     
           if(obj_player.energy < global.secondary_cost[i])
               weapon_available_color[i] = c_dkgray;   
           else
               if(weapon_available_color[i] = c_dkgray)
               {     
                   weapon_available_color[i] = c_white;
                   //instance_create((i-1)*40+18, 0, obj_weaponflash);
               }
        break;
        case 16: 
        case 17: 
        case 18: 
        case 19: 
        case 20: 
        case 21: 
        case 22:
        case 23: 
        case 24:
        case 25:
        case 26:
        case 27:
        case 28:
        case 29:
        case 30:
        case 31:
        case 32:
        case 33:
        case 34:
        case 35:
             if(global.secondary_stock[i] < 1)
                 weapon_available_color[i] = c_dkgray;        
             else
                 if(weapon_available_color[i] = c_dkgray)
                 {     
                     weapon_available_color[i] = c_white;
                     //instance_create((i-1)*40+18, 0, obj_weaponflash);
                 }
        break;
    }
}
