//Draws the ship's flame. Made into a script for easier access and usage
///////////////////////////////////////////////////////////////////////
if(speed > velocity_maximum+0.3)
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
