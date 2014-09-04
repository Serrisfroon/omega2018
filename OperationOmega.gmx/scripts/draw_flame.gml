//Draws the ship's flame. Made into a script for easier access and usage
///////////////////////////////////////////////////////////////////////
if(speed > maxspeed+0.3)
{
    part_type_scale(obj_partsystem.ship_flame[1],1+speed/20,0.6);
    part_type_direction(obj_partsystem.ship_flame[1],direction-180,direction-180,0,0);
    part_particles_create(obj_partsystem.system, x+lengthdir_x(8, facedir-180), y+lengthdir_y(8, facedir-180), obj_partsystem.ship_flame[1], 2);
}
else
{
    part_type_scale(obj_partsystem.ship_flame[0],1+speed/20,0.6);
    part_type_direction(obj_partsystem.ship_flame[0],direction-180,direction-180,0,0);
    part_particles_create(obj_partsystem.system, x+lengthdir_x(8, facedir-180), y+lengthdir_y(8, facedir-180), obj_partsystem.ship_flame[0], 2);
}


/*
//Draw flame
flamelife[nextflame] = 1;
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

draw_set_blend_mode(bm_add);
for(i = 0; i <= 11; i += 1)
{
 if(flamelife[i] = 0) continue;
 draw_sprite_ext(spr_engineflame, flameimg[i], flamex[i], flamey[i],  flamelife[i],  flamelife[i], flamedir[i], c_white, flamelife[i]);
 flamelife[i] -= 0.1;
}
draw_set_blend_mode(bm_normal);
