//Draws the ship's flame. Made into a script for easier access and usage
///////////////////////////////////////////////////////////////////////
part_type_direction(obj_partsystem.enginesparks, facedir+130, facedir+230, 0, 0);
part_particles_create(obj_partsystem.system, x+lengthdir_x(8, facedir-180), y+lengthdir_y(8, facedir-180), obj_partsystem.enginesparks, 1);
//Draw flame
flamelife[nextflame] = 10;
flamex[nextflame] = x+lengthdir_x(8, facedir-180);
flamey[nextflame] = y+lengthdir_y(8, facedir-180);
flamedir[nextflame] = direction;
if(speed > maxspeed+0.3)
    flameimg[nextflame] = 3;
else
    flameimg[nextflame] = 0;

switch(nextflame)
{
 case 10:
      nextflame = 0;
 break;
 default:
      nextflame += 1;
 break;
}

for(i = 0; i <= 11; i += 1)
{
 if(flamelife[i] = 0) continue;
 switch(flamelife[i])
 {
  case 10:
  case 9:
  case 8:
  case 7:
       flameimage[i] = 0;
  break;
  case 6:
  case 5:
  case 4:
       flameimage[i] = 1;
  break;
  case 3:
  case 2:
  case 1:
       flameimage[i] = 2;
  break;
 }
 draw_sprite_ext(spr_engineflame, flameimage[i]+flameimg[i], flamex[i], flamey[i], 1, 1, flamedir, c_white, 0.8);
 flamelife[i] -= 1*global.framerate;
}

