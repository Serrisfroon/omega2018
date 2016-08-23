for(i = 1; i <= 4; i += 1)
{
    switch(global.secondary[i])
    {
        case 1: //Fusion     
           if(obj_ship.energy < 20)
               esecondfade[i] = c_dkgray;   
           else
               if(esecondfade[i] = c_dkgray)
               {     
                   esecondfade[i] = c_white;
                   instance_create((i-1)*40+2, 0, obj_weaponflash);
               }
        break;
        case 2: //Stardust
           if(obj_ship.energy < 25)
               esecondfade[i] = c_dkgray;        
           else
               if(esecondfade[i] = c_dkgray)
               {     
                   esecondfade[i] = c_white;
                   instance_create((i-1)*40+2, 0, obj_weaponflash);
               }
        break;
        case 3: //Barrier
           if(obj_ship.energy < 35)
               esecondfade[i] = c_dkgray;        
           else
               if(esecondfade[i] = c_dkgray)
               {     
                   esecondfade[i] = c_white;
                   instance_create((i-1)*40+2, 0, obj_weaponflash);
               }
        break;
        case 5: //Beam
           if(obj_ship.energy < 60 || obj_ship.speed > 0)
               esecondfade[i] = c_dkgray;        
           else
               if(esecondfade[i] = c_dkgray)
               {     
                   esecondfade[i] = c_white;
                   instance_create((i-1)*40+2, 0, obj_weaponflash);
               }
        break;
        case 4: //Formation
           if(obj_ship.energy < 30 || obj_mod.foundtarget <= -1)
               esecondfade[i] = c_dkgray;        
           else
               if(esecondfade[i] = c_dkgray)
               {     
                   esecondfade[i] = c_white;
                   instance_create((i-1)*40+2, 0, obj_weaponflash);
               }
        break;
        case 6: //Sparkline
           if(obj_ship.energy < 15)
               esecondfade[i] = c_dkgray;        
           else
               if(esecondfade[i] = c_dkgray)
               {     
                   esecondfade[i] = c_white;
                   instance_create((i-1)*40+2, 0, obj_weaponflash);
               }
        break;
        case 7: //Burst
           if(obj_ship.energy < 20)
               esecondfade[i] = c_dkgray;        
           else
               if(esecondfade[i] = c_dkgray)
               {     
                   esecondfade[i] = c_white;
                   instance_create((i-1)*40+2, 0, obj_weaponflash);
               }
        break;
        case 8: //Slash
           if(obj_ship.energy < 20)
               esecondfade[i] = c_dkgray;        
           else
               if(esecondfade[i] = c_dkgray)
               {     
                   esecondfade[i] = c_white;
                   instance_create((i-1)*40+2, 0, obj_weaponflash);
               }
        break;
        case 9: //Horizon
           if(obj_ship.energy < 25)
               esecondfade[i] = c_dkgray;        
           else
               if(esecondfade[i] = c_dkgray)
               {     
                   esecondfade[i] = c_white;
                   instance_create((i-1)*40+2, 0, obj_weaponflash);
               }
        break;
        case 10: //Spiral
           if(obj_ship.energy < 20)
               esecondfade[i] = c_dkgray;        
           else
               if(esecondfade[i] = c_dkgray)
               {     
                   esecondfade[i] = c_white;
                   instance_create((i-1)*40+2, 0, obj_weaponflash);
               }
        break;
        case 11: //Whip
           if(obj_ship.energy < 20)
               esecondfade[i] = c_dkgray;        
           else
               if(esecondfade[i] = c_dkgray)
               {     
                   esecondfade[i] = c_white;
                   instance_create((i-1)*40+2, 0, obj_weaponflash);
               }
        break;
        case 12: //Trail
           if(obj_ship.energy < 25)
               esecondfade[i] = c_dkgray;        
           else
               if(esecondfade[i] = c_dkgray)
               {     
                   esecondfade[i] = c_white;
                   instance_create((i-1)*40+2, 0, obj_weaponflash);
               }
        break;
        case 13: //Serpent
           if(obj_ship.energy < 35)
               esecondfade[i] = c_dkgray;        
           else
               if(esecondfade[i] = c_dkgray)
               {     
                   esecondfade[i] = c_white;
                   instance_create((i-1)*40+2, 0, obj_weaponflash);
               }
        break;
        case 14: //Storm
           if(obj_ship.energy < 20)
               esecondfade[i] = c_dkgray;        
           else
               if(esecondfade[i] = c_dkgray)
               {     
                   esecondfade[i] = c_white;
                   instance_create((i-1)*40+2, 0, obj_weaponflash);
               }
        break;
        case 15: //Trigger
           if(obj_ship.energy < 15)
               esecondfade[i] = c_dkgray;        
           else
               if(esecondfade[i] = c_dkgray)
               {     
                   esecondfade[i] = c_white;
                   instance_create((i-1)*40+2, 0, obj_weaponflash);
               }
        break;
        case 16: //Dual Missile
             unavailable = 0;
             with(obj_dualmissile)
                 if(mid = global.mymid)
                     obj_mod.unavailable = 1;
             if(obj_ship.deploystock[i] < 1 || obj_mod.foundtarget <= -1 || unavailable = 1)
                 deployfade[i] = c_dkgray;        
             else
                 if(deployfade[i] = c_dkgray)
                 {     
                     deployfade[i] = c_white;
                     instance_create((i-1+moveover)*40+2, 0, obj_weaponflash);
                 }
        break;
        case 17: //Layer Missile
             unavailable = 0;
             with(obj_layermissile)
                 if(mid = global.mymid)
                     obj_mod.unavailable = 1;
             if(obj_ship.deploystock[i] < 1 || unavailable = 1)
                 deployfade[i] = c_dkgray;        
             else
                 if(deployfade[i] = c_dkgray)
                 {     
                     deployfade[i] = c_white;
                     instance_create((i-1+moveover)*40+2, 0, obj_weaponflash);
                 }
        break;
        case 24: //Hunter Mine
             unavailable = 0;
             with(obj_huntermine)
                 if(mid = global.mymid)
                     obj_mod.unavailable = 1;
             if(obj_ship.deploystock[i] < 1 || unavailable = 1)
                 deployfade[i] = c_dkgray;        
             else
                 if(deployfade[i] = c_dkgray)
                 {     
                     deployfade[i] = c_white;
                     instance_create((i-1+moveover)*40+2, 0, obj_weaponflash);
                 }
        break;
        case 18: //Locust Missile
             unavailable = 0;
             with(obj_locustmissile)
                 if(mid = global.mymid)
                     obj_mod.unavailable = 1;
             if(obj_ship.deploystock[i] < 1 || obj_mod.foundtarget <= -1 || unavailable = 1)
                 deployfade[i] = c_dkgray;        
             else
                 if(deployfade[i] = c_dkgray)
                 {     
                     deployfade[i] = c_white;
                     instance_create((i-1+moveover)*40+2, 0, obj_weaponflash);
                 }
        break;
        case 25: //Phantom Mine
             if(obj_ship.deploystock[i] < 1)
                 deployfade[i] = c_dkgray;        
             else
                 if(deployfade[i] = c_dkgray)
                 {     
                     deployfade[i] = c_white;
                     instance_create((i-1+moveover)*40+2, 0, obj_weaponflash);
                 }
        break;
        case 29: //Solus
             unavailable = 0;
             with(obj_solus)
                 if(mid = global.mymid)
                     obj_mod.unavailable = 1;
             if(obj_ship.deploystock[i] < 1 || unavailable = 1)
                 deployfade[i] = c_dkgray;        
             else
                 if(deployfade[i] = c_dkgray)
                 {     
                     deployfade[i] = c_white;
                     instance_create((i-1+moveover)*40+2, 0, obj_weaponflash);
                 }
        break;
        case 19: //Trident Missile
             unavailable = 0;
             with(obj_tridentmissile)
                 if(mid = global.mymid)
                     obj_mod.unavailable = 1;
             if(obj_ship.deploystock[i] < 1 || obj_mod.foundtarget <= -1 || unavailable = 1)
                 deployfade[i] = c_dkgray;        
             else
                 if(deployfade[i] = c_dkgray)
                 {     
                     deployfade[i] = c_white;
                     instance_create((i-1+moveover)*40+2, 0, obj_weaponflash);
                 }
        break;
        case 20: //Shock Missile
             unavailable = 0;
             with(obj_shockmissile)
                 if(mid = global.mymid)
                     obj_mod.unavailable = 1;
             if(obj_ship.deploystock[i] < 1 || obj_mod.foundtarget <= -1 || unavailable = 1)
                 deployfade[i] = c_dkgray;        
             else
                 if(deployfade[i] = c_dkgray)
                 {     
                     deployfade[i] = c_white;
                     instance_create((i-1+moveover)*40+2, 0, obj_weaponflash);
                 }
        break;
        case 26: //Hacker Mine
             if(obj_ship.deploystock[i] < 1)
                 deployfade[i] = c_dkgray;        
             else
                 if(deployfade[i] = c_dkgray)
                 {     
                     deployfade[i] = c_white;
                     instance_create((i-1+moveover)*40+2, 0, obj_weaponflash);
                 }
        break;
        case 21: //Hermit Missile
             unavailable = 0;
             with(obj_hermitmissile)
                 if(mid = global.mymid)
                     obj_mod.unavailable = 1;
             if(obj_ship.deploystock[i] < 1 || obj_mod.foundtarget <= -1 || unavailable = 1)
                 deployfade[i] = c_dkgray;        
             else
                 if(deployfade[i] = c_dkgray)
                 {     
                     deployfade[i] = c_white;
                     instance_create((i-1+moveover)*40+2, 0, obj_weaponflash);
                 }
        break;
        case 23: //Strike Missile
             if(obj_ship.deploystock[i] < 1 || obj_mod.foundtarget <= -1)
                 deployfade[i] = c_dkgray;        
             else
                 if(deployfade[i] = c_dkgray)
                 {     
                     deployfade[i] = c_white;
                     instance_create((i-1+moveover)*40+2, 0, obj_weaponflash);
                 }
        break;
        case 28: //Strike Mine
             if(obj_ship.deploystock[i] < 1)
                 deployfade[i] = c_dkgray;        
             else
                 if(deployfade[i] = c_dkgray)
                 {     
                     deployfade[i] = c_white;
                     instance_create((i-1+moveover)*40+2, 0, obj_weaponflash);
                 }
        break;
        case 30: //Turret
             if(obj_ship.deploystock[i] < 1)
                 deployfade[i] = c_dkgray;        
             else
                 if(deployfade[i] = c_dkgray)
                 {     
                     deployfade[i] = c_white;
                     instance_create((i-1+moveover)*40+2, 0, obj_weaponflash);
                 }
        break;
        case 22: //Split Missile
             unavailable = 0;
             with(obj_splitmissile)
                 if(mid = global.mymid)
                     obj_mod.unavailable = 1;
             if(obj_ship.deploystock[i] < 1 || unavailable = 1)
                 deployfade[i] = c_dkgray;        
             else
                 if(deployfade[i] = c_dkgray)
                 {     
                     deployfade[i] = c_white;
                     instance_create((i-1+moveover)*40+2, 0, obj_weaponflash);
                 }
        break;
        case 27: //Cluster Mine
             unavailable = 0;
             if(obj_ship.deploystock[i] < 1 || unavailable = 1)
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
