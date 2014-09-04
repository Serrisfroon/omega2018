
var save;
save = ini_open("omegadata.sav");
global.myname = ini_read_string("Data", "name", "Name");
global.myipaddress = ini_read_string("Data", "ip", "192.168.0.1");
global.shipselect = ini_read_real("Data", "shipselect", 1);
global.primary = ini_read_real("Data", "primary", 1);
global.esecond[1] = ini_read_real("Data", "esecond1", 1);
global.esecond[2] = ini_read_real("Data", "esecond2", 2);
global.esecond[3] = ini_read_real("Data", "esecond3", 3);
global.deploy[1] = ini_read_real("Data", "deploy1", 1);
global.deploy[2] = ini_read_real("Data", "deploy2", 2);
global.deploy[3] = ini_read_real("Data", "deploy3", 3);
global.spacehot = ini_read_real("Data", "spacehot", 1);
global.spacetype = ini_read_real("Data", "spacetype", 1);
global.playerkills = ini_read_real("Data", "playerkills", 0);
global.playerdeaths = ini_read_real("Data", "playerdeaths", 0);
global.playermatchwin = ini_read_real("Data", "playermatchwin", 0);
global.playermatchloss = ini_read_real("Data", "playermatchloss", 0);
global.playerduelwin = ini_read_real("Data", "playerduelwin", 0);
global.playerduelloss = ini_read_real("Data", "playerduelloss", 0);
global.playerdodge = ini_read_real("Data", "playerdodge", 0);
global.musictoggle = ini_read_real("Data", "musictoggle", 0);
global.sfxtoggle = ini_read_real("Data", "sfxtoggle", 0);
global.firingmode = ini_read_real("Data", "firingmode", 0);
global.fromprofile = ini_read_real("Data", "fromprofile", 0);

ini_close();

