mouseon = 0;
nameimage = -1;
switch(switching)
{
 case 1:
      if(mouse_x >= x-76*scaling && mouse_x <= x-52*scaling && mouse_y >= y-76*scaling && mouse_y <= y-52*scaling)
      {
       areax = -76;
       areay = -76;
       mouseon = 1;
      }
      if(mouse_x >= x-44*scaling && mouse_x <= x-20*scaling && mouse_y >= y-76*scaling && mouse_y <= y-52*scaling)
      {
       areax = -44;
       areay = -76;
       mouseon = 1;
      }
      if(mouse_x >= x-12*scaling && mouse_x <= x+12*scaling && mouse_y >= y-76*scaling && mouse_y <= y-52*scaling)
      {
       areax = -12;
       areay = -76;
       mouseon = 1;
      }
      if(mouse_x >= x+20*scaling && mouse_x <= x+44*scaling && mouse_y >= y-76*scaling && mouse_y <= y-52*scaling)
      {
       areax = +20;
       areay = -76;
       mouseon = 1;
      }
      if(mouse_x >= x+52*scaling && mouse_x <= x+76*scaling && mouse_y >= y-76*scaling && mouse_y <= y-52*scaling)
      {
       areax = +52;
       areay = -76;
       mouseon = 1;
      }      
 break;
 case 2:
      if(mouse_x >= x-76*scaling && mouse_x <= x-52*scaling && mouse_y >= y-76*scaling && mouse_y <= y-52*scaling)
      {
       areax = -76;
       areay = -76;
       mouseon = 1;
      }
      if(mouse_x >= x-44*scaling && mouse_x <= x-20*scaling && mouse_y >= y-76*scaling && mouse_y <= y-52*scaling)
      {
       areax = -44;
       areay = -76;
       mouseon = 1;
      }
      if(mouse_x >= x-12*scaling && mouse_x <= x+12*scaling && mouse_y >= y-76*scaling && mouse_y <= y-52*scaling)
      {
       areax = -12;
       areay = -76;
       mouseon = 1;
      }
      if(mouse_x >= x+20*scaling && mouse_x <= x+44*scaling && mouse_y >= y-76*scaling && mouse_y <= y-52*scaling)
      {
       areax = +20;
       areay = -76;
       mouseon = 1;
      }
      if(mouse_x >= x+52*scaling && mouse_x <= x+76*scaling && mouse_y >= y-76*scaling && mouse_y <= y-52*scaling)
      {
       areax = 52;
       areay = -76;
       mouseon = 1;
      }      
      switch(image)
      {
       case 1:
            //255, 123
            //Needle
            if(mouse_x >= x-227*scaling && mouse_x <= x-203*scaling && mouse_y >= y-31*scaling && mouse_y <= y-7*scaling)
            {
                areax = -227;
                areay = -31;
                mouseon = 1;
                nameimage = 0;
            }  
            //Sonic           
            if(mouse_x >= x-179*scaling && mouse_x <= x-155*scaling && mouse_y >= y-31*scaling && mouse_y <= y-7*scaling)
            {
                areax = -179;
                areay = -31;
                mouseon = 1;
                nameimage = 1;
            }             
            //Wave           
            if(mouse_x >= x-131*scaling && mouse_x <= x-107*scaling && mouse_y >= y-31*scaling && mouse_y <= y-7*scaling)
            {
                areax = -131;
                areay = -31;
                mouseon = 1;
                nameimage = 2;
            }             
            //Flank           
            if(mouse_x >= x-83*scaling && mouse_x <= x-59*scaling && mouse_y >= y-31*scaling && mouse_y <= y-7*scaling)
            {
                areax = -83;
                areay = -31;
                mouseon = 1;
                nameimage = 3;
            }             
            //Stasis           
            if(mouse_x >= x-35*scaling && mouse_x <= x-11*scaling && mouse_y >= y-31*scaling && mouse_y <= y-7*scaling)
            {
                areax = -35;
                areay = -31;
                mouseon = 1;
                nameimage = 4;
            }             
            //Helix           
            if(mouse_x >= x+13*scaling && mouse_x <= x+37*scaling && mouse_y >= y-31*scaling && mouse_y <= y-7*scaling)
            {
                areax = 13;
                areay = -31;
                mouseon = 1;
                nameimage = 5;
            }             
            //Siphon           
            if(mouse_x >= x+61*scaling && mouse_x <= x+85*scaling && mouse_y >= y-31*scaling && mouse_y <= y-7*scaling)
            {
                areax = 61;
                areay = -31;
                mouseon = 1;
                nameimage = 6;
            }             
            //Double           
            if(mouse_x >= x+109*scaling && mouse_x <= x+133*scaling && mouse_y >= y-31*scaling && mouse_y <= y-7*scaling)
            {
                areax = 109;
                areay = -31;
                mouseon = 1;
                nameimage = 7;
            }             
            //Pierce           
            if(mouse_x >= x+157*scaling && mouse_x <= x+181*scaling && mouse_y >= y-31*scaling && mouse_y <= y-7*scaling)
            {
                areax = 157;
                areay = -31;
                mouseon = 1;
                nameimage = 8;
            }             
            //Spread           
            if(mouse_x >= x+205*scaling && mouse_x <= x+229*scaling && mouse_y >= y-31*scaling && mouse_y <= y-7*scaling)
            {
                areax = 205;
                areay = -31;
                mouseon = 1;
                nameimage = 9;
            }    
            //Send primary change to host
            clearbuffer(0);
            packet_label_write(11, global.mymid);
            writebyte(global.primary,0);
            //Send to everyone if host
            if(global.master = true)
             client_sendall(0,0);
            else
            //Send to host if client
             sendmessage(global.host,0,0,0);
         
       break;
       case 2:
            //255, 123
            //Fusion
            if(mouse_x >= x-235*scaling && mouse_x <= x-211*scaling && mouse_y >= y-31*scaling && mouse_y <= y-7*scaling)
            {
                areax = -235;
                areay = -31;
                mouseon = 1;
                nameimage = 10;
            }  
            //Stardust
            if(mouse_x >= x-203*scaling && mouse_x <= x-179*scaling && mouse_y >= y-31*scaling && mouse_y <= y-7*scaling)
            {
                areax = -203;
                areay = -31;
                mouseon = 1;
                nameimage = 11;
            }  
            //Barrier
            if(mouse_x >= x-171*scaling && mouse_x <= x-147*scaling && mouse_y >= y-31*scaling && mouse_y <= y-7*scaling)
            {
                areax = -171;
                areay = -31;
                mouseon = 1;
                nameimage = 12;
            }  
            //Formation
            if(mouse_x >= x-139*scaling && mouse_x <= x-115*scaling && mouse_y >= y-31*scaling && mouse_y <= y-7*scaling)
            {
                areax = -139;
                areay = -31;
                mouseon = 1;
                nameimage = 13;
            }  
            //Beam
            if(mouse_x >= x-107*scaling && mouse_x <= x-83*scaling && mouse_y >= y-31*scaling && mouse_y <= y-7*scaling)
            {
                areax = -107;
                areay = -31;
                mouseon = 1;
                nameimage = 14;
            }  
            //Sparkline
            if(mouse_x >= x-75*scaling && mouse_x <= x-51*scaling && mouse_y >= y-31*scaling && mouse_y <= y-7*scaling)
            {
                areax = -75;
                areay = -31;
                mouseon = 1;
                nameimage = 15;
            }  
            //Burst
            if(mouse_x >= x-43*scaling && mouse_x <= x-19*scaling && mouse_y >= y-31*scaling && mouse_y <= y-7*scaling)
            {
                areax = -43;
                areay = -31;
                mouseon = 1;
                nameimage = 16;
            }  
            //Slash
            if(mouse_x >= x-11*scaling && mouse_x <= x+13*scaling && mouse_y >= y-31*scaling && mouse_y <= y-7*scaling)
            {
                areax = -11;
                areay = -31;
                mouseon = 1;
                nameimage = 17;
            }  
            //Horizon
            if(mouse_x >= x+21*scaling && mouse_x <= x+45*scaling && mouse_y >= y-31*scaling && mouse_y <= y-7*scaling)
            {
                areax = 21;
                areay = -31;
                mouseon = 1;
                nameimage = 18;
            }  
            //Spiral
            if(mouse_x >= x+53*scaling && mouse_x <= x+77*scaling && mouse_y >= y-31*scaling && mouse_y <= y-7*scaling)
            {
                areax = 53;
                areay = -31;
                mouseon = 1;
                nameimage = 19;
            }  
            //Whip
            if(mouse_x >= x+85*scaling && mouse_x <= x+109*scaling && mouse_y >= y-31*scaling && mouse_y <= y-7*scaling)
            {
                areax = 85;
                areay = -31;
                mouseon = 1;
                nameimage = 20;
            }  
            //Trail
            if(mouse_x >= x+117*scaling && mouse_x <= x+141*scaling && mouse_y >= y-31*scaling && mouse_y <= y-7*scaling)
            {
                areax = 117;
                areay = -31;
                mouseon = 1;
                nameimage = 21;
            }  
            //Reflection
            if(mouse_x >= x+149*scaling && mouse_x <= x+173*scaling && mouse_y >= y-31*scaling && mouse_y <= y-7*scaling)
            {
                areax = 149;
                areay = -31;
                mouseon = 1;
                nameimage = 22;
            }  
            //Storm
            if(mouse_x >= x+181*scaling && mouse_x <= x+205*scaling && mouse_y >= y-31*scaling && mouse_y <= y-7*scaling)
            {
                areax = 181;
                areay = -31;
                mouseon = 1;
                nameimage = 23;
            }  
            //Trigger
            if(mouse_x >= x+213*scaling && mouse_x <= x+237*scaling && mouse_y >= y-31*scaling && mouse_y <= y-7*scaling)
            {
                areax = 213;
                areay = -31;
                mouseon = 1;
                nameimage = 24;
            }  
       break;
       case 3:
            //255, 123
            //Dual Missile
            if(mouse_x >= x-235*scaling && mouse_x <= x-211*scaling && mouse_y >= y-31*scaling && mouse_y <= y-7*scaling)
            {
                areax = -235;
                areay = -31;
                mouseon = 1;
                nameimage = 25;
            }  
            //Layer Missile
            if(mouse_x >= x-203*scaling && mouse_x <= x-179*scaling && mouse_y >= y-31*scaling && mouse_y <= y-7*scaling)
            {
                areax = -203;
                areay = -31;
                mouseon = 1;
                nameimage = 26;
            }  
            //Locust Missile
            if(mouse_x >= x-171*scaling && mouse_x <= x-147*scaling && mouse_y >= y-31*scaling && mouse_y <= y-7*scaling)
            {
                areax = -171;
                areay = -31;
                mouseon = 1;
                nameimage = 27;
            }  
            //Trident Missile
            if(mouse_x >= x-139*scaling && mouse_x <= x-115*scaling && mouse_y >= y-31*scaling && mouse_y <= y-7*scaling)
            {
                areax = -139;
                areay = -31;
                mouseon = 1;
                nameimage = 28;
            }  
            //Shock Missile
            if(mouse_x >= x-107*scaling && mouse_x <= x-83*scaling && mouse_y >= y-31*scaling && mouse_y <= y-7*scaling)
            {
                areax = -107;
                areay = -31;
                mouseon = 1;
                nameimage = 29;
            }  
            //Hermit Missile
            if(mouse_x >= x-75*scaling && mouse_x <= x-51*scaling && mouse_y >= y-31*scaling && mouse_y <= y-7*scaling)
            {
                areax = -75;
                areay = -31;
                mouseon = 1;
                nameimage = 30;
            }  
            //Split Missile
            if(mouse_x >= x-43*scaling && mouse_x <= x-19*scaling && mouse_y >= y-31*scaling && mouse_y <= y-7*scaling)
            {
                areax = -43;
                areay = -31;
                mouseon = 1;
                nameimage = 31;
            }  
            //Strike Missile
            if(mouse_x >= x-11*scaling && mouse_x <= x+13*scaling && mouse_y >= y-31*scaling && mouse_y <= y-7*scaling)
            {
                areax = -11;
                areay = -31;
                mouseon = 1;
                nameimage = 32;
            }  
            //Hunter Mine
            if(mouse_x >= x+21*scaling && mouse_x <= x+45*scaling && mouse_y >= y-31*scaling && mouse_y <= y-7*scaling)
            {
                areax = 21;
                areay = -31;
                mouseon = 1;
                nameimage = 33;
            }  
            //Phantom Mine
            if(mouse_x >= x+53*scaling && mouse_x <= x+77*scaling && mouse_y >= y-31*scaling && mouse_y <= y-7*scaling)
            {
                areax = 53;
                areay = -31;
                mouseon = 1;
                nameimage = 34;
            }  
            //Hacker Mine
            if(mouse_x >= x+85*scaling && mouse_x <= x+109*scaling && mouse_y >= y-31*scaling && mouse_y <= y-7*scaling)
            {
                areax = 85;
                areay = -31;
                mouseon = 1;
                nameimage = 35;
            }  
            //Cluster Mine
            if(mouse_x >= x+117*scaling && mouse_x <= x+141*scaling && mouse_y >= y-31*scaling && mouse_y <= y-7*scaling)
            {
                areax = 117;
                areay = -31;
                mouseon = 1;
                nameimage = 36;
            }  
            //Strike Mine
            if(mouse_x >= x+149*scaling && mouse_x <= x+173*scaling && mouse_y >= y-31*scaling && mouse_y <= y-7*scaling)
            {
                areax = 149;
                areay = -31;
                mouseon = 1;
                nameimage = 37;
            }  
            //Solus
            if(mouse_x >= x+181*scaling && mouse_x <= x+205*scaling && mouse_y >= y-31*scaling && mouse_y <= y-7*scaling)
            {
                areax = 181;
                areay = -31;
                mouseon = 1;
                nameimage = 38;
            }  
            //Turret
            if(mouse_x >= x+213*scaling && mouse_x <= x+237*scaling && mouse_y >= y-31*scaling && mouse_y <= y-7*scaling)
            {
                areax = 213;
                areay = -31;
                mouseon = 1;
                nameimage = 39;
            }  
       break;
      } 

 break;
}


