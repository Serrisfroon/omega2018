//Draws the ship's turnblur. Made into a script for easier access and usage
///////////////////////////////////////////////////////////////////////
//Draw turnblur
var ship_image_number = global.lolship[mid]*global.team[mid]-1;

part_type_speed(obj_partsystem.ship_turn_part[ship_image_number], speed, speed, 0, 0);
part_type_direction(obj_partsystem.ship_turn_part[ship_image_number], direction, direction, 0, 0);
part_type_orientation(obj_partsystem.ship_turn_part[ship_image_number], image_angle-direction, image_angle-direction, 0, 0, 1);
part_particles_create(obj_partsystem.system, x, y, obj_partsystem.ship_turn_part[ship_image_number], 1);

/*
turnblurlife[nextturnblur] = 0.7;
turnblurx[nextturnblur] = x;
turnblury[nextturnblur] = y;
turnblurangle[nextturnblur] = image_angle;
turnblurdir[nextturnblur] = direction;
turnblurspeed[nextturnblur] = speed;

switch(nextturnblur)
{
 case 10:
      nextturnblur = 0;
      totalturnblur = 11
 break;
 default:
      nextturnblur += 1;
 break;
}
for(i = 0; i < max(nextturnblur, totalturnblur); i += 1)
{
 if(turnblurlife[i] = 0) continue;
 draw_sprite_ext(sprite_index, 0, turnblurx[i], turnblury[i], 1, 1, turnblurangle[i], c_white, turnblurlife[i]);
 turnblurx[i] += lengthdir_x(turnblurspeed[i], turnblurdir[i]);
 turnblury[i] += lengthdir_y(turnblurspeed[i], turnblurdir[i]);
 turnblurlife[i] -= 0.07;
}