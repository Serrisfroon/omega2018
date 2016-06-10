obj_chooseprimary.x = 223;
obj_chooseprimary.y = 50;
switch(global.shipselect)
{
    //Alphastar
    case 1:
        obj_customizer.weaponslot[1] = instance_create(278, 50, obj_choosesecondary);
        obj_customizer.weaponslot[1].weapontype = 0;
        obj_customizer.weaponslot[1].secondnumber = 1;
        obj_customizer.weaponslot[1].weaponnumber = 1;
        if(global.spacetype = 0)
        {
            obj_customizer.weaponslot[2] = instance_create(328, 50, obj_choosesecondary);
            obj_customizer.weaponslot[2].weapontype = 1;
            obj_customizer.weaponslot[2].secondnumber = 2;
            obj_customizer.weaponslot[2].weaponnumber = 1;
            obj_customizer.weaponslot[3] = instance_create(378, 50, obj_choosesecondary);
            obj_customizer.weaponslot[3].weapontype = 1;
            obj_customizer.weaponslot[3].secondnumber = 3;
            obj_customizer.weaponslot[3].weaponnumber = 2;
            obj_customizer.weaponslot[4] = instance_create(428, 50, obj_choosesecondary);
            obj_customizer.weaponslot[4].weapontype = 0;
            obj_customizer.weaponslot[4].secondnumber = 4;
            obj_customizer.weaponslot[4].weaponnumber = 2;    
        }
        else
        {
            obj_customizer.weaponslot[2] = instance_create(328, 50, obj_choosesecondary);
            obj_customizer.weaponslot[2].weapontype = 0;
            obj_customizer.weaponslot[2].secondnumber = 2;
            obj_customizer.weaponslot[2].weaponnumber = 2;
            obj_customizer.weaponslot[3] = instance_create(378, 50, obj_choosesecondary);
            obj_customizer.weaponslot[3].weapontype = 1;
            obj_customizer.weaponslot[3].secondnumber = 3;
            obj_customizer.weaponslot[3].weaponnumber = 1;
            obj_customizer.weaponslot[4] = instance_create(428, 50, obj_choosesecondary);
            obj_customizer.weaponslot[4].weapontype = 1;
            obj_customizer.weaponslot[4].secondnumber = 4;
            obj_customizer.weaponslot[4].weaponnumber = 2;        
        }
    break;
    
    //Swiftwing
    case 2:
        obj_customizer.weaponslot[1] = instance_create(278, 50, obj_choosesecondary);
        obj_customizer.weaponslot[1].weapontype = 0;
        obj_customizer.weaponslot[1].secondnumber = 1;
        obj_customizer.weaponslot[1].weaponnumber = 1;
        obj_customizer.weaponslot[2] = instance_create(328, 50, obj_choosesecondary);
        obj_customizer.weaponslot[2].weapontype = 0;
        obj_customizer.weaponslot[2].secondnumber = 2;
        obj_customizer.weaponslot[2].weaponnumber = 2;
        if(global.spacetype = 0)
        {
            obj_customizer.weaponslot[3] = instance_create(378, 50, obj_choosesecondary);
            obj_customizer.weaponslot[3].weapontype = 1;
            obj_customizer.weaponslot[3].secondnumber = 3;
            obj_customizer.weaponslot[3].weaponnumber = 1;
            obj_customizer.weaponslot[4] = instance_create(428, 50, obj_choosesecondary);
            obj_customizer.weaponslot[4].weapontype = 0;
            obj_customizer.weaponslot[4].secondnumber = 4;
            obj_customizer.weaponslot[4].weaponnumber = 3;    
        }
        else
        {
            obj_customizer.weaponslot[3] = instance_create(378, 50, obj_choosesecondary);
            obj_customizer.weaponslot[3].weapontype = 0;
            obj_customizer.weaponslot[3].secondnumber = 3;
            obj_customizer.weaponslot[3].weaponnumber = 3;
            obj_customizer.weaponslot[4] = instance_create(428, 50, obj_choosesecondary);
            obj_customizer.weaponslot[4].weapontype = 1;
            obj_customizer.weaponslot[4].secondnumber = 4;
            obj_customizer.weaponslot[4].weaponnumber = 1;        
        }
    break;
    
    //Goliath
    case 3:
        if(global.spacetype = 0)
        {
            obj_customizer.weaponslot[1] = instance_create(278, 50, obj_choosesecondary);
            obj_customizer.weaponslot[1].weapontype = 1;
            obj_customizer.weaponslot[1].secondnumber = 1;
            obj_customizer.weaponslot[1].weaponnumber = 1;
            obj_customizer.weaponslot[2] = instance_create(328, 50, obj_choosesecondary);
            obj_customizer.weaponslot[2].weapontype = 1;
            obj_customizer.weaponslot[2].secondnumber = 2;
            obj_customizer.weaponslot[2].weaponnumber = 2;
            obj_customizer.weaponslot[3] = instance_create(378, 50, obj_choosesecondary);
            obj_customizer.weaponslot[3].weapontype = 1;
            obj_customizer.weaponslot[3].secondnumber = 3;
            obj_customizer.weaponslot[3].weaponnumber = 3;
            obj_customizer.weaponslot[4] = instance_create(428, 50, obj_choosesecondary);
            obj_customizer.weaponslot[4].weapontype = 0;
            obj_customizer.weaponslot[4].secondnumber = 4;
            obj_customizer.weaponslot[4].weaponnumber = 1;    
        }
        else
        {
            obj_customizer.weaponslot[1] = instance_create(278, 50, obj_choosesecondary);
            obj_customizer.weaponslot[1].weapontype = 0;
            obj_customizer.weaponslot[1].secondnumber = 1;
            obj_customizer.weaponslot[1].weaponnumber = 1;
            obj_customizer.weaponslot[2] = instance_create(328, 50, obj_choosesecondary);
            obj_customizer.weaponslot[2].weapontype = 1;
            obj_customizer.weaponslot[2].secondnumber = 2;
            obj_customizer.weaponslot[2].weaponnumber = 1;
            obj_customizer.weaponslot[3] = instance_create(378, 50, obj_choosesecondary);
            obj_customizer.weaponslot[3].weapontype = 1;
            obj_customizer.weaponslot[3].secondnumber = 3;
            obj_customizer.weaponslot[3].weaponnumber = 2;
            obj_customizer.weaponslot[4] = instance_create(428, 50, obj_choosesecondary);
            obj_customizer.weaponslot[4].weapontype = 1;
            obj_customizer.weaponslot[4].secondnumber = 4;
            obj_customizer.weaponslot[4].weaponnumber = 3;        
        }
    break;
}
