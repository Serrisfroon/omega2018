//Draws text with a border
//draw_text_bordered(x, y, string, scale, border size, border color, inner color);

draw_set_color(argument5);
draw_text_transformed(argument0-argument4*argument3, argument1, argument2, argument3, argument3, 0);
draw_text_transformed(argument0+argument4*argument3, argument1, argument2, argument3, argument3, 0);
draw_text_transformed(argument0, argument1-argument4*argument3, argument2, argument3, argument3, 0);
draw_text_transformed(argument0, argument1+argument4*argument3, argument2, argument3, argument3, 0);
draw_text_transformed(argument0-argument4*argument3, argument1-argument4*argument3, argument2, argument3, argument3, 0);
draw_text_transformed(argument0-argument4*argument3, argument1+argument4*argument3, argument2, argument3, argument3, 0);
draw_text_transformed(argument0+argument4*argument3, argument1-argument4*argument3, argument2, argument3, argument3, 0);
draw_text_transformed(argument0+argument4*argument3, argument1+argument4*argument3, argument2, argument3, argument3, 0);

draw_set_color(argument6);
draw_text_transformed(argument0, argument1, argument2, argument3, argument3, 0);
