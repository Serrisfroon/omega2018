var save;
save = ini_open("omegadata.sav");
ini_write_string("Data", "name", global.myname);
ini_write_string("Data", "ip", global.myipaddress);
ini_write_real("Data", "shipselect", global.shipselect);
ini_write_real("Data", "primary", global.primary);
ini_write_real("Data", "esecond1", global.esecond[1]);
ini_write_real("Data", "esecond2", global.esecond[2]);
ini_write_real("Data", "esecond3", global.esecond[3]);
ini_write_real("Data", "deploy1", global.deploy[1]);
ini_write_real("Data", "deploy2", global.deploy[2]);
ini_write_real("Data", "deploy3", global.deploy[3]);
ini_write_real("Data", "spacehot", global.spacehot);
ini_write_real("Data", "playerkills", global.playerkills);
ini_write_real("Data", "playerdeaths", global.playerdeaths);
ini_write_real("Data", "playermatchwin", global.playermatchwin);
ini_write_real("Data", "playermatchloss", global.playermatchloss);
ini_write_real("Data", "playerduelwin", global.playerduelwin);
ini_write_real("Data", "playerduelloss", global.playerduelloss);
ini_write_real("Data", "playerdodge", global.playerdodge);
ini_write_real("Data", "musictoggle", global.musictoggle);
ini_write_real("Data", "sfxtoggle", global.sfxtoggle);
ini_write_real("Data", "firingmode", global.firingmode);
ini_write_real("Data", "fromprofile", global.fromprofile);

ini_close();


