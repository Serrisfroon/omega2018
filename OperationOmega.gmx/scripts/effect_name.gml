//Creates an effect for the ship names to enter with
//argument0-the ship name you're using
//argument1, argument2 - x,y location of the start
var xx, yy;
xx = 53;
yy = 21;

obj_customizer.current_shipname = "";
obj_customizer.alarm[5] = 7;
obj_customizer.animate_name = 0;

switch(global.shipselect)
{
    case 1:
        obj_customizer.entire_shipname = "Alpha";
       //A//////////////////////
        effect_line = instance_create(xx, yy, obj_effect_line);
        effect_line.start_scaling = 2;
        effect_line.line_angle = 90;
        effect_line.alarm[0] = 1;
        effect_line = instance_create(xx+3, yy-6, obj_effect_line);
        effect_line.start_scaling = 1;
        effect_line.line_angle = 0;
        effect_line.alarm[0] = 3;
        effect_line = instance_create(xx+3, yy, obj_effect_line);
        effect_line.start_scaling = 1;
        effect_line.line_angle = 0;
        effect_line.alarm[0] = 5;
        effect_line = instance_create(xx+6, yy, obj_effect_line);
        effect_line.start_scaling = 2;
        effect_line.line_angle = 90;
        effect_line.alarm[0] = 7;
        //L////////////////////
        effect_line = instance_create(xx+11, yy, obj_effect_line);
        effect_line.start_scaling = 2;
        effect_line.line_angle = 90;
        effect_line.alarm[0] = 9; 
        effect_line = instance_create(xx+14, yy+6, obj_effect_line);
        effect_line.start_scaling = 1;
        effect_line.line_angle = 0;
        effect_line.alarm[0] = 11;
        //P/////////////////////////
        effect_line = instance_create(xx+22, yy, obj_effect_line);
        effect_line.start_scaling = 2;
        effect_line.line_angle = 90;
        effect_line.alarm[0] = 13;
        effect_line = instance_create(xx+25, yy-6, obj_effect_line);
        effect_line.start_scaling = 1;
        effect_line.line_angle = 0;
        effect_line.alarm[0] = 15;
        effect_line = instance_create(xx+25, yy, obj_effect_line);
        effect_line.start_scaling = 1;
        effect_line.line_angle = 0;
        effect_line.alarm[0] = 17;
        effect_line = instance_create(xx+28, yy-3, obj_effect_line);
        effect_line.start_scaling = 1;
        effect_line.line_angle = 90;
        effect_line.alarm[0] = 19;      
        //H//////////////////////
        effect_line = instance_create(xx+33, yy, obj_effect_line);
        effect_line.start_scaling = 2;
        effect_line.line_angle = 90;
        effect_line.alarm[0] = 21;
        effect_line = instance_create(xx+36, yy, obj_effect_line);
        effect_line.start_scaling = 1;
        effect_line.line_angle = 0;
        effect_line.alarm[0] = 23;
        effect_line = instance_create(xx+39, yy, obj_effect_line);
        effect_line.start_scaling = 2;
        effect_line.line_angle = 90;
        effect_line.alarm[0] = 25;  
        //A//////////////////////
        effect_line = instance_create(xx+44, yy, obj_effect_line);
        effect_line.start_scaling = 2;
        effect_line.line_angle = 90;
        effect_line.alarm[0] = 27;
        effect_line = instance_create(xx+47, yy-6, obj_effect_line);
        effect_line.start_scaling = 1;
        effect_line.line_angle = 0;
        effect_line.alarm[0] = 29;
        effect_line = instance_create(xx+47, yy, obj_effect_line);
        effect_line.start_scaling = 1;
        effect_line.line_angle = 0;
        effect_line.alarm[0] = 31;
        effect_line = instance_create(xx+50, yy, obj_effect_line);
        effect_line.start_scaling = 2;
        effect_line.line_angle = 90;
        effect_line.alarm[0] = 33;
    break;
    case 2:
        obj_customizer.entire_shipname = "Hornet";
        //H//////////////////////
        effect_line = instance_create(xx, yy, obj_effect_line);
        effect_line.start_scaling = 2;
        effect_line.line_angle = 90;
        effect_line.alarm[0] = 1;
        effect_line = instance_create(xx+3, yy, obj_effect_line);
        effect_line.start_scaling = 1;
        effect_line.line_angle = 0;
        effect_line.alarm[0] = 3;
        effect_line = instance_create(xx+6, yy, obj_effect_line);
        effect_line.start_scaling = 2;
        effect_line.line_angle = 90;
        effect_line.alarm[0] = 5;
        //O////////////////////
        effect_line = instance_create(xx+11, yy, obj_effect_line);
        effect_line.start_scaling = 2;
        effect_line.line_angle = 90;
        effect_line.alarm[0] = 7; 
        effect_line = instance_create(xx+14, yy+6, obj_effect_line);
        effect_line.start_scaling = 1;
        effect_line.line_angle = 0;
        effect_line.alarm[0] = 9;        
        effect_line = instance_create(xx+14, yy-6, obj_effect_line);
        effect_line.start_scaling = 1;
        effect_line.line_angle = 0;
        effect_line.alarm[0] = 11;
        effect_line = instance_create(xx+17, yy, obj_effect_line);
        effect_line.start_scaling = 2;
        effect_line.line_angle = 90;
        effect_line.alarm[0] = 13; 
        //R/////////////////////////
        effect_line = instance_create(xx+22, yy, obj_effect_line);
        effect_line.start_scaling = 2;
        effect_line.line_angle = 90;
        effect_line.alarm[0] = 15;
        effect_line = instance_create(xx+25, yy-6, obj_effect_line);
        effect_line.start_scaling = 1;
        effect_line.line_angle = 0;
        effect_line.alarm[0] = 17;
        effect_line = instance_create(xx+25, yy, obj_effect_line);
        effect_line.start_scaling = 1;
        effect_line.line_angle = 0;
        effect_line.alarm[0] = 19;
        effect_line = instance_create(xx+28, yy-3, obj_effect_line);
        effect_line.start_scaling = 1;
        effect_line.line_angle = 90;
        effect_line.alarm[0] = 21;      
        effect_line = instance_create(xx+25, yy+3, obj_effect_line);
        effect_line.start_scaling = 1;
        effect_line.line_angle = 135;
        effect_line.alarm[0] = 23;      
        //N//////////////////////
        effect_line = instance_create(xx+33, yy, obj_effect_line);
        effect_line.start_scaling = 2;
        effect_line.line_angle = 90;
        effect_line.alarm[0] = 25;
        effect_line = instance_create(xx+36, yy-3, obj_effect_line);
        effect_line.start_scaling = 1;
        effect_line.line_angle = 135;
        effect_line.alarm[0] = 27;
        effect_line = instance_create(xx+39, yy, obj_effect_line);
        effect_line.start_scaling = 2;
        effect_line.line_angle = 90;
        effect_line.alarm[0] = 29;  
        //E//////////////////////
        effect_line = instance_create(xx+44, yy, obj_effect_line);
        effect_line.start_scaling = 2;
        effect_line.line_angle = 90;
        effect_line.alarm[0] = 31;
        effect_line = instance_create(xx+47, yy-6, obj_effect_line);
        effect_line.start_scaling = 1;
        effect_line.line_angle = 0;
        effect_line.alarm[0] = 33;
        effect_line = instance_create(xx+47, yy, obj_effect_line);
        effect_line.start_scaling = 1;
        effect_line.line_angle = 0;
        effect_line.alarm[0] = 35;
        effect_line = instance_create(xx+47, yy+6, obj_effect_line);
        effect_line.start_scaling = 1;
        effect_line.line_angle = 0;
        effect_line.alarm[0] = 37;
        //T//////////////////////
        effect_line = instance_create(xx+58, yy, obj_effect_line);
        effect_line.start_scaling = 2;
        effect_line.line_angle = 90;
        effect_line.alarm[0] = 39;
        effect_line = instance_create(xx+58, yy-6, obj_effect_line);
        effect_line.start_scaling = 1;
        effect_line.line_angle = 0;
        effect_line.alarm[0] = 41;
    break;
    case 3:
        obj_customizer.entire_shipname = "Goliath";
        //G//////////////////////
        effect_line = instance_create(xx, yy, obj_effect_line);
        effect_line.start_scaling = 2;
        effect_line.line_angle = 90;
        effect_line.alarm[0] = 1;
        effect_line = instance_create(xx+3, yy-6, obj_effect_line);
        effect_line.start_scaling = 1;
        effect_line.line_angle = 0;
        effect_line.alarm[0] = 3;
        effect_line = instance_create(xx+3, yy+6, obj_effect_line);
        effect_line.start_scaling = 1;
        effect_line.line_angle = 0;
        effect_line.alarm[0] = 5;
        effect_line = instance_create(xx+6, yy+3, obj_effect_line);
        effect_line.start_scaling = 1;
        effect_line.line_angle = 90;
        effect_line.alarm[0] = 7;
        //O////////////////////
        effect_line = instance_create(xx+11, yy, obj_effect_line);
        effect_line.start_scaling = 2;
        effect_line.line_angle = 90;
        effect_line.alarm[0] = 9; 
        effect_line = instance_create(xx+14, yy+6, obj_effect_line);
        effect_line.start_scaling = 1;
        effect_line.line_angle = 0;
        effect_line.alarm[0] = 11;
        effect_line = instance_create(xx+14, yy-6, obj_effect_line);
        effect_line.start_scaling = 1;
        effect_line.line_angle = 0;
        effect_line.alarm[0] = 13;
        effect_line = instance_create(xx+17, yy, obj_effect_line);
        effect_line.start_scaling = 2;
        effect_line.line_angle = 90;
        effect_line.alarm[0] = 15; 
        //L/////////////////////////
        effect_line = instance_create(xx+22, yy, obj_effect_line);
        effect_line.start_scaling = 2;
        effect_line.line_angle = 90;
        effect_line.alarm[0] = 17;
        effect_line = instance_create(xx+25, yy+6, obj_effect_line);
        effect_line.start_scaling = 1;
        effect_line.line_angle = 0;
        effect_line.alarm[0] = 19;  
        //I//////////////////////
        effect_line = instance_create(xx+33, yy, obj_effect_line);
        effect_line.start_scaling = 2;
        effect_line.line_angle = 90;
        effect_line.alarm[0] = 21;
        //A//////////////////////
        effect_line = instance_create(xx+37, yy, obj_effect_line);
        effect_line.start_scaling = 2;
        effect_line.line_angle = 90;
        effect_line.alarm[0] = 23;
        effect_line = instance_create(xx+40, yy-6, obj_effect_line);
        effect_line.start_scaling = 1;
        effect_line.line_angle = 0;
        effect_line.alarm[0] = 25;
        effect_line = instance_create(xx+40, yy, obj_effect_line);
        effect_line.start_scaling = 1;
        effect_line.line_angle = 0;
        effect_line.alarm[0] = 27;
        effect_line = instance_create(xx+43, yy, obj_effect_line);
        effect_line.start_scaling = 2;
        effect_line.line_angle = 90;
        effect_line.alarm[0] = 29;
        //T//////////////////////
        effect_line = instance_create(xx+51, yy, obj_effect_line);
        effect_line.start_scaling = 2;
        effect_line.line_angle = 90;
        effect_line.alarm[0] = 31;
        effect_line = instance_create(xx+51, yy-6, obj_effect_line);
        effect_line.start_scaling = 1;
        effect_line.line_angle = 0;
        effect_line.alarm[0] = 33;
        //H//////////////////////
        effect_line = instance_create(xx+59, yy, obj_effect_line);
        effect_line.start_scaling = 2;
        effect_line.line_angle = 90;
        effect_line.alarm[0] = 35;
        effect_line = instance_create(xx+62, yy, obj_effect_line);
        effect_line.start_scaling = 1;
        effect_line.line_angle = 0;
        effect_line.alarm[0] = 37;
        effect_line = instance_create(xx+65, yy, obj_effect_line);
        effect_line.start_scaling = 2;
        effect_line.line_angle = 90;
        effect_line.alarm[0] = 39;

    break;
}
