//Initialize maptotal and number of maps
var maptotal, numberofmaps, mapcheck, addmap;
maptotal = 0;
numberofmaps = 10;



//Add map randomizer values
for(i = 1; i <= numberofmaps; i += 1)
    maptotal += global.mapselect[i];

//Get a random number somewhere in maptotal
mapcheck = random(maptotal);
addmap = 0;
//Pick a map
for(i = 1; i <= numberofmaps; i += 1)
{
    addmap += global.mapselect[i];
    //Check if the random number is lower than this map randomizer variable
    if(mapcheck <= addmap)
    {
        //Cycle through and add a fraction of the selected map variable to other map variables
        for(ii = 1; ii <= numberofmaps; ii += 1)
        {
            if(ii = i)
                continue;
            global.mapselect[ii] += ceil(global.mapselect[i]/(numberofmaps-1));            
        }
        //Zero the randomizer variable
        global.mapselect[i] = 0;
        
        //Break the loop(error prevention only)
        break;
    }
}

//Return the map number
return i;

