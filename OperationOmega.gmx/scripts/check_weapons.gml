for(i = 1; i <= 4; i += 1)
{
    switch(global.secondary[i])
    {
        case 4:     
           if(obj_player.energy < global.secondary_cost[i] || obj_mod.targeted_object = -1)
               weapon_avaialable_color[i] = c_dkgray;   
           else
               if(weapon_avaialable_color[i] = c_dkgray)
               {     
                   weapon_avaialable_color[i] = c_white;
                   instance_create((i-1)*40+2, 0, obj_weaponflash);
               }
        break;
        case 9:     
           if(obj_player.energy < global.secondary_cost[i] || obj_mod.targeted_object = -1)
               weapon_avaialable_color[i] = c_dkgray;   
           else
               if(weapon_avaialable_color[i] = c_dkgray)
               {     
                   weapon_avaialable_color[i] = c_white;
                   instance_create((i-1)*40+2, 0, obj_weaponflash);
               }
        break;
        case 5:     
           if(obj_player.energy < global.secondary_cost[i] || obj_player.speed > 0)
               weapon_avaialable_color[i] = c_dkgray;   
           else
               if(weapon_avaialable_color[i] = c_dkgray)
               {     
                   weapon_avaialable_color[i] = c_white;
                   instance_create((i-1)*40+2, 0, obj_weaponflash);
               }
        break;
        case 1:     
        case 2:     
        case 3:     
        case 6:     
        case 7:     
        case 8:     
        case 10:     
        case 11:     
        case 12:     
        case 13:     
        case 14:     
        case 15:     
           if(obj_player.energy < global.secondary_cost[i])
               weapon_avaialable_color[i] = c_dkgray;   
           else
               if(weapon_avaialable_color[i] = c_dkgray)
               {     
                   weapon_avaialable_color[i] = c_white;
                   instance_create((i-1)*40+2, 0, obj_weaponflash);
               }
        break;
        case 17: 
        case 22:
        case 24:
        case 25:
        case 26:
        case 27:
        case 28:
        case 29:
        case 30:
             if(global.secondary_stock[i] < 1)
                 deployfade[i] = c_dkgray;        
             else
                 if(deployfade[i] = c_dkgray)
                 {     
                     deployfade[i] = c_white;
                     instance_create((i-1+moveover)*40+2, 0, obj_weaponflash);
                 }
        break;
        case 16: 
        case 18: 
        case 19: 
        case 20: 
        case 21: 
        case 23: 
             if(global.secondary_stock[i] < 1 || obj_mod.targeted_object = -1)
                 deployfade[i] = c_dkgray;        
             else
                 if(deployfade[i] = c_dkgray)
                 {     
                     deployfade[i] = c_white;
                     instance_create((i-1+moveover)*40+2, 0, obj_weaponflash);
                 }
        break;
    }
}
