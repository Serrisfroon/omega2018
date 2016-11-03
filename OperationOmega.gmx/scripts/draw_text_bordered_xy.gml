//Draws text with a border
//draw_text_bordered_xy(x, y, string, xscale, yscale, border size, border color, inner color);

draw_set_color(argument6);
draw_text_transformed(argument0-argument5*argument3, argument1, argument2, argument3, argument4, 0);
draw_text_transformed(argument0+argument5*argument3, argument1, argument2, argument3, argument4, 0);
draw_text_transformed(argument0, argument1-argument5*argument3, argument2, argument3, argument4, 0);
draw_text_transformed(argument0, argument1+argument5*argument3, argument2, argument3, argument4, 0);
draw_text_transformed(argument0-argument5*argument3, argument1-argument5*argument3, argument2, argument3, argument4, 0);
draw_text_transformed(argument0-argument5*argument3, argument1+argument5*argument3, argument2, argument3, argument4, 0);
draw_text_transformed(argument0+argument5*argument3, argument1-argument5*argument3, argument2, argument3, argument4, 0);
draw_text_transformed(argument0+argument5*argument3, argument1+argument5*argument3, argument2, argument3, argument4, 0);

draw_set_color(argument7);
draw_text_transformed(argument0, argument1, argument2, argument3, argument3, 0);
