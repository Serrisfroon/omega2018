var xx,yy,last_x,last_y,amount,dir,old_colour;
old_colour=draw_get_color()
draw_set_color(argument4)
xx=argument0
yy=argument1
last_x=argument0
last_y=argument1
dir=point_direction(xx,yy,argument2,argument3)
/*
argument0=start x
argument1=start y
argument2=finish x
argument3=finish y
argument4=color
argument5=amount to move towards the finish
argument6=amount to step sideways
argument7=amount to step sideways in the opposite direction
argument8=true or false (whether to renew the direction towards the point)
*/
repeat (point_distance(xx,yy,argument2,argument3)/argument5)+5//repeats by the distance divided by the length it moves towards the point
{
if argument8=true//whether to renew the direction towards the point 
dir=point_direction(xx,yy,argument2,argument3)
xx += cos(degtorad(dir))*argument5;//moves the x in the direction
yy -= sin(degtorad(dir))*argument5;//moves the y in the direction
amount = argument6-random(argument7)// to make the lightning random
xx += cos(degtorad(dir-90))*amount;//moves the x in a random sideways amount
yy -= sin(degtorad(dir-90))*amount;//moves the y in a random sideways amount
draw_line(xx,yy,last_x,last_y)// draws a line between the last points and the previous ones
draw_set_alpha(0.2)
draw_set_color(c_aqua);
draw_line_width(xx,yy,last_x,last_y,8)// draws a line between the last points and the previous ones
draw_set_color(c_white);
draw_line_width(xx,yy,last_x,last_y,4)// draws a line between the last points and the previous ones
draw_set_alpha(1)
last_x=xx//move the last point to the previous point
last_y=yy//move the last point to the previous point
}
draw_set_color(old_colour)