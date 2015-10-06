//Simple RNG for primary fire spray
//global.primaryRNG must be initialized before this works
//primary_random(max_value, mid)

//Find a new seed based on the old seed and set it
global.primaryRNG[argument1] = (global.primaryRNG[argument1] + 2404) mod 65536;

//Divide the seed until the remainder is less than 1 more than the max value.  
//Example: Max value of 12. 12+1=13 Result can be 0 to 12, which is the desired range
return (global.primaryRNG[argument1] mod (argument0+1));