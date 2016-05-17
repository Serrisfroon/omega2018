mouseon = 0;
nameimage = -1;
switch(switching)
{
 case 1:
      if(mouse_x >= x-76*scaling && mouse_x <= x-44*scaling && mouse_y >= y-82*scaling && mouse_y <= y-50*scaling)
      {
       areax = -76;
       areay = -82;
       mouseon = 1;
      }
      if(mouse_x >= x-36*scaling && mouse_x <= x-4*scaling && mouse_y >= y-82*scaling && mouse_y <= y-50*scaling)
      {
       areax = -36;
       areay = -82;
       mouseon = 1;
      }
      if(mouse_x >= x+4*scaling && mouse_x <= x+36*scaling && mouse_y >= y-82*scaling && mouse_y <= y-50*scaling)
      {
       areax = 4;
       areay = -82;
       mouseon = 1;
      }
      if(mouse_x >= x+44*scaling && mouse_x <= x+76*scaling && mouse_y >= y-82*scaling && mouse_y <= y-50*scaling)
      {
       areax = 44;
       areay = -82;
       mouseon = 1;
      }
 break;
 case 2:
      if(mouse_x >= x-76*scaling && mouse_x <= x-44*scaling && mouse_y >= y-82*scaling && mouse_y <= y-50*scaling)
      {
       areax = -76;
       areay = -82;
       mouseon = 1;
      }
      if(mouse_x >= x-36*scaling && mouse_x <= x-4*scaling && mouse_y >= y-82*scaling && mouse_y <= y-50*scaling)
      {
       areax = -36;
       areay = -82;
       mouseon = 1;
      }
      if(mouse_x >= x+4*scaling && mouse_x <= x+36*scaling && mouse_y >= y-82*scaling && mouse_y <= y-50*scaling)
      {
       areax = 4;
       areay = -82;
       mouseon = 1;
      }
      if(mouse_x >= x+44*scaling && mouse_x <= x+76*scaling && mouse_y >= y-82*scaling && mouse_y <= y-50*scaling)
      {
       areax = 44;
       areay = -82;
       mouseon = 1;
      }
      switch(image)
      {
       case 0:
       case 3:
            //255, 123
            //Needle
            if(mouse_x >= x-232*scaling && mouse_x <= x-200*scaling && mouse_y >= y-37*scaling && mouse_y <= y-5*scaling)
            {
                areax = -232;
                areay = -37;
                mouseon = 1;
                nameimage = 0;
            }  
            //Sonic           
            if(mouse_x >= x-184*scaling && mouse_x <= x-152*scaling && mouse_y >= y-37*scaling && mouse_y <= y-5*scaling)
            {
                areax = -184;
                areay = -37;
                mouseon = 1;
                nameimage = 1;
            }             
            //Wave           
            if(mouse_x >= x-136*scaling && mouse_x <= x-104*scaling && mouse_y >= y-37*scaling && mouse_y <= y-5*scaling)
            {
                areax = -136;
                areay = -37;
                mouseon = 1;
                nameimage = 2;
            }             
            //Flank           
            if(mouse_x >= x-88*scaling && mouse_x <= x-56*scaling && mouse_y >= y-37*scaling && mouse_y <= y-5*scaling)
            {
                areax = -88;
                areay = -37;
                mouseon = 1;
                nameimage = 3;
            }             
            //Stasis           
            if(mouse_x >= x-40*scaling && mouse_x <= x-8*scaling && mouse_y >= y-37*scaling && mouse_y <= y-5*scaling)
            {
                areax = -40;
                areay = -37;
                mouseon = 1;
                nameimage = 4;
            }             
            //Helix           
            if(mouse_x >= x+8*scaling && mouse_x <= x+40*scaling && mouse_y >= y-37*scaling && mouse_y <= y-5*scaling)
            {
                areax = 8;
                areay = -37;
                mouseon = 1;
                nameimage = 5;
            }             
            //Siphon           
            if(mouse_x >= x+56*scaling && mouse_x <= x+88*scaling && mouse_y >= y-37*scaling && mouse_y <= y-5*scaling)
            {
                areax = 56;
                areay = -37;
                mouseon = 1;
                nameimage = 6;
            }             
            //Double           
            if(mouse_x >= x+104*scaling && mouse_x <= x+136*scaling && mouse_y >= y-37*scaling && mouse_y <= y-5*scaling)
            {
                areax = 104;
                areay = -37;
                mouseon = 1;
                nameimage = 7;
            }             
            //Pierce           
            if(mouse_x >= x+152*scaling && mouse_x <= x+184*scaling && mouse_y >= y-37*scaling && mouse_y <= y-5*scaling)
            {
                areax = 152;
                areay = -37;
                mouseon = 1;
                nameimage = 8;
            }             
            //Spread           
            if(mouse_x >= x+200*scaling && mouse_x <= x+232*scaling && mouse_y >= y-37*scaling && mouse_y <= y-5*scaling)
            {
                areax = 200;
                areay = -37;
                mouseon = 1;
                nameimage = 9;
            }    

       break;
       case 1:
       case 4:
            //255, 123
            //Fusion
            if(mouse_x >= x-240*scaling && mouse_x <= x-208*scaling && mouse_y >= y-37*scaling && mouse_y <= y-5*scaling)
            {
                areax = -241;
                areay = -37;
                mouseon = 1;
                nameimage = 10;
            }  
            //Stardust
            if(mouse_x >= x-208*scaling && mouse_x <= x-176*scaling && mouse_y >= y-37*scaling && mouse_y <= y-5*scaling)
            {
                areax = -209;
                areay = -37;
                mouseon = 1;
                nameimage = 11;
            }  
            //Barrier
            if(mouse_x >= x-176*scaling && mouse_x <= x-144*scaling && mouse_y >= y-37*scaling && mouse_y <= y-5*scaling)
            {
                areax = -177;
                areay = -37;
                mouseon = 1;
                nameimage = 12;
            }  
            //Formation
            if(mouse_x >= x-144*scaling && mouse_x <= x-112*scaling && mouse_y >= y-37*scaling && mouse_y <= y-5*scaling)
            {
                areax = -145;
                areay = -37;
                mouseon = 1;
                nameimage = 13;
            }  
            //Beam
            if(mouse_x >= x-112*scaling && mouse_x <= x-80*scaling && mouse_y >= y-37*scaling && mouse_y <= y-5*scaling)
            {
                areax = -113;
                areay = -37;
                mouseon = 1;
                nameimage = 14;
            }  
            //Sparkline
            if(mouse_x >= x-80*scaling && mouse_x <= x-48*scaling && mouse_y >= y-37*scaling && mouse_y <= y-5*scaling)
            {
                areax = -81;
                areay = -37;
                mouseon = 1;
                nameimage = 15;
            }  
            //Burst
            if(mouse_x >= x-48*scaling && mouse_x <= x-16*scaling && mouse_y >= y-37*scaling && mouse_y <= y-5*scaling)
            {
                areax = -49;
                areay = -37;
                mouseon = 1;
                nameimage = 16;
            }  
            //Slash
            if(mouse_x >= x-16*scaling && mouse_x <= x+16*scaling && mouse_y >= y-37*scaling && mouse_y <= y-5*scaling)
            {
                areax = -17;
                areay = -37;
                mouseon = 1;
                nameimage = 17;
            }  
            //Horizon
            if(mouse_x >= x+16*scaling && mouse_x <= x+48*scaling && mouse_y >= y-37*scaling && mouse_y <= y-5*scaling)
            {
                areax = 15;
                areay = -37;
                mouseon = 1;
                nameimage = 18;
            }  
            //Spiral
            if(mouse_x >= x+48*scaling && mouse_x <= x+80*scaling && mouse_y >= y-37*scaling && mouse_y <= y-5*scaling)
            {
                areax = 47;
                areay = -37;
                mouseon = 1;
                nameimage = 19;
            }  
            //Whip
            if(mouse_x >= x+80*scaling && mouse_x <= x+112*scaling && mouse_y >= y-37*scaling && mouse_y <= y-5*scaling)
            {
                areax = 79;
                areay = -37;
                mouseon = 1;
                nameimage = 20;
            }  
            //Trail
            if(mouse_x >= x+112*scaling && mouse_x <= x+144*scaling && mouse_y >= y-37*scaling && mouse_y <= y-5*scaling)
            {
                areax = 111;
                areay = -37;
                mouseon = 1;
                nameimage = 21;
            }  
            //Reflection
            if(mouse_x >= x+144*scaling && mouse_x <= x+176*scaling && mouse_y >= y-37*scaling && mouse_y <= y-5*scaling)
            {
                areax = 143;
                areay = -37;
                mouseon = 1;
                nameimage = 22;
            }  
            //Storm
            if(mouse_x >= x+176*scaling && mouse_x <= x+208*scaling && mouse_y >= y-37*scaling && mouse_y <= y-5*scaling)
            {
                areax = 175;
                areay = -37;
                mouseon = 1;
                nameimage = 23;
            }  
            //Trigger
            if(mouse_x >= x+208*scaling && mouse_x <= x+240*scaling && mouse_y >= y-37*scaling && mouse_y <= y-5*scaling)
            {
                areax = 207;
                areay = -37;
                mouseon = 1;
                nameimage = 24;
            }  
       break;
       case 2:
       case 5:
            //255, 123
            //Dual Missile
            if(mouse_x >= x-240*scaling && mouse_x <= x-208*scaling && mouse_y >= y-37*scaling && mouse_y <= y-5*scaling)
            {
                areax = -241;
                areay = -37;
                mouseon = 1;
                nameimage = 25;
            }  
            //Layer Missile
            if(mouse_x >= x-208*scaling && mouse_x <= x-176*scaling && mouse_y >= y-37*scaling && mouse_y <= y-5*scaling)
            {
                areax = -209;
                areay = -37;
                mouseon = 1;
                nameimage = 26;
            }  
            //Locust Missile
            if(mouse_x >= x-176*scaling && mouse_x <= x-144*scaling && mouse_y >= y-37*scaling && mouse_y <= y-5*scaling)
            {
                areax = -177;
                areay = -37;
                mouseon = 1;
                nameimage = 27;
            }  
            //Trident Missile
            if(mouse_x >= x-144*scaling && mouse_x <= x-112*scaling && mouse_y >= y-37*scaling && mouse_y <= y-5*scaling)
            {
                areax = -145;
                areay = -37;
                mouseon = 1;
                nameimage = 28;
            }  
            //Shock Missile
            if(mouse_x >= x-112*scaling && mouse_x <= x-80*scaling && mouse_y >= y-37*scaling && mouse_y <= y-5*scaling)
            {
                areax = -113;
                areay = -37;
                mouseon = 1;
                nameimage = 29;
            }  
            //Hermit Missile
            if(mouse_x >= x-80*scaling && mouse_x <= x-48*scaling && mouse_y >= y-37*scaling && mouse_y <= y-5*scaling)
            {
                areax = -81;
                areay = -37;
                mouseon = 1;
                nameimage = 30;
            }  
            //Split Missile
            if(mouse_x >= x-48*scaling && mouse_x <= x-16*scaling && mouse_y >= y-37*scaling && mouse_y <= y-5*scaling)
            {
                areax = -49;
                areay = -37;
                mouseon = 1;
                nameimage = 31;
            }  
            //Strike Missile
            if(mouse_x >= x-16*scaling && mouse_x <= x+16*scaling && mouse_y >= y-37*scaling && mouse_y <= y-5*scaling)
            {
                areax = -17;
                areay = -37;
                mouseon = 1;
                nameimage = 32;
            }  
            //Hunter Mine
            if(mouse_x >= x+16*scaling && mouse_x <= x+48*scaling && mouse_y >= y-37*scaling && mouse_y <= y-5*scaling)
            {
                areax = 15;
                areay = -37;
                mouseon = 1;
                nameimage = 33;
            }  
            //Phantom Mine
            if(mouse_x >= x+48*scaling && mouse_x <= x+80*scaling && mouse_y >= y-37*scaling && mouse_y <= y-5*scaling)
            {
                areax = 47;
                areay = -37;
                mouseon = 1;
                nameimage = 34;
            }  
            //Hacker Mine
            if(mouse_x >= x+80*scaling && mouse_x <= x+112*scaling && mouse_y >= y-37*scaling && mouse_y <= y-5*scaling)
            {
                areax = 79;
                areay = -37;
                mouseon = 1;
                nameimage = 35;
            }  
            //Cluster Mine
            if(mouse_x >= x+112*scaling && mouse_x <= x+144*scaling && mouse_y >= y-37*scaling && mouse_y <= y-5*scaling)
            {
                areax = 111;
                areay = -37;
                mouseon = 1;
                nameimage = 36;
            }  
            //Strike Mine
            if(mouse_x >= x+144*scaling && mouse_x <= x+176*scaling && mouse_y >= y-37*scaling && mouse_y <= y-5*scaling)
            {
                areax = 143;
                areay = -37;
                mouseon = 1;
                nameimage = 37;
            }  
            //Solus
            if(mouse_x >= x+176*scaling && mouse_x <= x+208*scaling && mouse_y >= y-37*scaling && mouse_y <= y-5*scaling)
            {
                areax = 175;
                areay = -37;
                mouseon = 1;
                nameimage = 38;
            }  
            //Turret
            if(mouse_x >= x+208*scaling && mouse_x <= x+240*scaling && mouse_y >= y-37*scaling && mouse_y <= y-5*scaling)
            {
                areax = 207;
                areay = -37;
                mouseon = 1;
                nameimage = 39;
            }  
       break;
      } 

 break;
}
