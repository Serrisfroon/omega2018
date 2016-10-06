//Draws the ship's turnblur. Made into a script for easier access and usage
///////////////////////////////////////////////////////////////////////
//Draw turnblur
var ship_image_number = global.selected_ship[mid]+(global.team[mid]-1)*3-1;

part_type_speed(obj_partsystem.ship_turn_part[ship_image_number], speed, speed, 0, 0);
part_type_direction(obj_partsystem.ship_turn_part[ship_image_number], direction, direction, 0, 0);
part_type_orientation(obj_partsystem.ship_turn_part[ship_image_number], image_angle-direction, image_angle-direction, 0, 0, 1);
part_particles_create(obj_partsystem.system, x, y, obj_partsystem.ship_turn_part[ship_image_number], 1);

