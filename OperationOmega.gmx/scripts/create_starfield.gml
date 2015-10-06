////////////////////////////////////////////////////////////////////
//create_starfield(fieldsize, starscale, starnumber)
//returns the created background
////////////////////////////////////////////////////////////////
var stars, starsize, alphaback, tempback;
stars = surface_create(argument0, argument0);
surface_set_target(stars);
draw_clear(c_black);

repeat(argument2)
{
    starsize = choose(argument1, argument1+0.1); 
    draw_sprite_ext(spr_singlestar, 0, random(argument0), random(argument0), starsize, starsize, 0, c_white, 0.8);
}
alphaback = background_create_from_surface(stars, 0, 0, 1000, 1000, 0, 0);

draw_set_color(c_white);
draw_set_alpha(1);
draw_rectangle(0, 0, argument0, argument0, 0);
tempback = background_create_from_surface(stars, 0, 0, argument0, argument0, 0, 0);
surface_reset_target();

background_set_alpha_from_background(tempback, alphaback);
surface_free(stars);
background_delete(alphaback);

return tempback;