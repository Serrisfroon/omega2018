//argument0 = explosion size

//Create emitter
var explode_emit;
explode_emit = part_emitter_create(obj_partsystem.system);
part_emitter_region(obj_partsystem.system, explode_emit, x-5, x+5, y-5, y+5, ps_shape_ellipse, ps_distr_gaussian);

switch(argument0)
{
case 0:
    //Reset explosion particles
    part_type_scale(obj_partsystem.explosion_core,0.7,0.7);
    part_type_life(obj_partsystem.explosion_core,50,60);
    
    part_type_scale(obj_partsystem.explosion_glare,2.3,2.3);
    part_type_life(obj_partsystem.explosion_glare,35,35);
    
    part_type_scale(obj_partsystem.explosion_burst,3.5,0.45);
    part_type_life(obj_partsystem.explosion_burst,40,50);
    part_type_speed(obj_partsystem.explosion_burst,4,7.5,-0.11,0);
    
    part_type_size(obj_partsystem.explosion_flare,0.29,0.29,0,0);
    part_type_life(obj_partsystem.explosion_flare,40,50);
break;
case 1:
    //Reset explosion particles
    part_type_scale(obj_partsystem.explosion_core,1,1);
    part_type_life(obj_partsystem.explosion_core,60,76);
    
    part_type_scale(obj_partsystem.explosion_glare,3,3);
    part_type_life(obj_partsystem.explosion_glare,45,45);
    
    part_type_scale(obj_partsystem.explosion_burst,4,0.60);
    part_type_life(obj_partsystem.explosion_burst,40,50);
    part_type_speed(obj_partsystem.explosion_burst,5,10,-0.16,0);
    
    part_type_size(obj_partsystem.explosion_flare,0.35,0.35,0,0);
    part_type_life(obj_partsystem.explosion_flare,45,60);
break;
case 2:
    //Reset explosion particles
    part_type_scale(obj_partsystem.explosion_core,1.4,1.4);
    part_type_life(obj_partsystem.explosion_core,80,95);
    
    part_type_scale(obj_partsystem.explosion_glare,4,4);
    part_type_life(obj_partsystem.explosion_glare,65,65);
    
    part_type_scale(obj_partsystem.explosion_burst,6,1);
    part_type_life(obj_partsystem.explosion_burst,60,70);
    part_type_speed(obj_partsystem.explosion_burst,5,10,-0.16,0);
    
    part_type_size(obj_partsystem.explosion_flare,0.5,0.5,0,0);
    part_type_life(obj_partsystem.explosion_flare,65,80);
break;
case 3:
    //Reset explosion particles
    part_type_scale(obj_partsystem.explosion_core,1.8,1.8);
    part_type_life(obj_partsystem.explosion_core,80,95);
    
    part_type_scale(obj_partsystem.explosion_glare,5,5);
    part_type_life(obj_partsystem.explosion_glare,65,65);
    
    part_type_scale(obj_partsystem.explosion_burst,7.5,1.2);
    part_type_life(obj_partsystem.explosion_burst,60,70);
    part_type_speed(obj_partsystem.explosion_burst,5,10,-0.16,0);
    
    part_type_size(obj_partsystem.explosion_flare,0.6,0.6,0,0);
    part_type_life(obj_partsystem.explosion_flare,65,80);
break;
}

//Create explosion particles
part_emitter_burst(obj_partsystem.system, explode_emit, obj_partsystem.explosion_glare, 2+irandom(2));

part_emitter_burst(obj_partsystem.system, explode_emit, obj_partsystem.explosion_flare, 25);

part_emitter_burst(obj_partsystem.system, explode_emit, obj_partsystem.explosion_burst, 7+irandom(5));

part_emitter_burst(obj_partsystem.system, explode_emit, obj_partsystem.explosion_core, 10);   

//Destroy Emitter
part_emitter_destroy(obj_partsystem.system, explode_emit);
