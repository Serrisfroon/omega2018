//Checks if point x,y is in triangle x1,y1,x2,y2,x3,y3
//x, y, x1, y1, x2, y2, x3, y3
var total, t1, t2, t3;
//Find the total area of the triangle
total = triangle_area(argument2, argument3, argument4, argument5, argument6, argument7);
//Find the area of hypothetical triangle x,y,x2,y2,x3,y3
t1 = triangle_area(argument0, argument1, argument4, argument5, argument6, argument7);
//Find the area of hypothetical triangle x,y,x1,y1,x2,y2
t2 = triangle_area(argument0, argument1, argument2, argument3, argument4, argument5);
//Find the area of hypothetical triangle x,y,x1,y1,x3,y3
t3 = triangle_area(argument0, argument1, argument2, argument3, argument6, argument7);
//If point x,y is in triangle x1,y1,x2,y2,x3,y3 , then the total area of
//the three hypothetical triangles will equal the area of the actual triangle.
//Return if true or not
if((t1+t2+t3) = total)
 return true;
else
 return false;