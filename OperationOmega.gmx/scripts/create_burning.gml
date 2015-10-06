//argument0, argument1 = x, y

switch(irandom(1))
{
    case 0:
        part_type_color2(obj_partsystem.ship_burn,8421631,157);
    break;
    case 1:
        part_type_color1(obj_partsystem.ship_burn,3513087);
    break;
}

part_particles_create(obj_partsystem.system, argument0, argument1, obj_partsystem.ship_burn, 8);