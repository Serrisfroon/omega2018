obj_chooseprimary.x = 223;
obj_chooseprimary.y = 60;
switch(global.shipselect)
{
    //Alphastar
    case 1:
        obj_customizer.weaponslot[1] = instance_create(278, 60, obj_choosesecondary);
        obj_customizer.weaponslot[1].weapontype = 0;
        obj_customizer.weaponslot[1].secondnumber = 1;
        if(global.secondary_type[4] = 0)
        {
            obj_customizer.weaponslot[2] = instance_create(328, 60, obj_choosesecondary);
            obj_customizer.weaponslot[2].weapontype = 1;
            obj_customizer.weaponslot[2].secondnumber = 2;
            obj_customizer.weaponslot[3] = instance_create(378, 60, obj_choosesecondary);
            obj_customizer.weaponslot[3].weapontype = 1;
            obj_customizer.weaponslot[3].secondnumber = 3;
            obj_customizer.weaponslot[4] = instance_create(428, 60, obj_choosesecondary);
            obj_customizer.weaponslot[4].weapontype = 0;
            obj_customizer.weaponslot[4].secondnumber = 4;
        }
        else
        {
            obj_customizer.weaponslot[2] = instance_create(328, 60, obj_choosesecondary);
            obj_customizer.weaponslot[2].weapontype = 0;
            obj_customizer.weaponslot[2].secondnumber = 2;
            obj_customizer.weaponslot[3] = instance_create(378, 60, obj_choosesecondary);
            obj_customizer.weaponslot[3].weapontype = 1;
            obj_customizer.weaponslot[3].secondnumber = 3;
            obj_customizer.weaponslot[4] = instance_create(428, 60, obj_choosesecondary);
            obj_customizer.weaponslot[4].weapontype = 1;
            obj_customizer.weaponslot[4].secondnumber = 4;
        }
    break;
    
    //Swiftwing
    case 2:
        obj_customizer.weaponslot[1] = instance_create(278, 60, obj_choosesecondary);
        obj_customizer.weaponslot[1].weapontype = 0;
        obj_customizer.weaponslot[1].secondnumber = 1;
        obj_customizer.weaponslot[2] = instance_create(328, 60, obj_choosesecondary);
        obj_customizer.weaponslot[2].weapontype = 0;
        obj_customizer.weaponslot[2].secondnumber = 2;
        if(global.secondary_type[4] = 0)
        {
            obj_customizer.weaponslot[3] = instance_create(378, 60, obj_choosesecondary);
            obj_customizer.weaponslot[3].weapontype = 1;
            obj_customizer.weaponslot[3].secondnumber = 3;
            obj_customizer.weaponslot[4] = instance_create(428, 60, obj_choosesecondary);
            obj_customizer.weaponslot[4].weapontype = 0;
            obj_customizer.weaponslot[4].secondnumber = 4;
        }
        else
        {
            obj_customizer.weaponslot[3] = instance_create(378, 60, obj_choosesecondary);
            obj_customizer.weaponslot[3].weapontype = 0;
            obj_customizer.weaponslot[3].secondnumber = 3;
            obj_customizer.weaponslot[4] = instance_create(428, 60, obj_choosesecondary);
            obj_customizer.weaponslot[4].weapontype = 1;
            obj_customizer.weaponslot[4].secondnumber = 4;
        }
    break;
    
    //Goliath
    case 3:
        if(global.secondary_type[4] = 0)
        {
            obj_customizer.weaponslot[1] = instance_create(278, 60, obj_choosesecondary);
            obj_customizer.weaponslot[1].weapontype = 1;
            obj_customizer.weaponslot[1].secondnumber = 1;
            obj_customizer.weaponslot[2] = instance_create(328, 60, obj_choosesecondary);
            obj_customizer.weaponslot[2].weapontype = 1;
            obj_customizer.weaponslot[2].secondnumber = 2;
            obj_customizer.weaponslot[3] = instance_create(378, 60, obj_choosesecondary);
            obj_customizer.weaponslot[3].weapontype = 1;
            obj_customizer.weaponslot[3].secondnumber = 3;
            obj_customizer.weaponslot[4] = instance_create(428, 60, obj_choosesecondary);
            obj_customizer.weaponslot[4].weapontype = 0;
            obj_customizer.weaponslot[4].secondnumber = 4;
        }
        else
        {
            obj_customizer.weaponslot[1] = instance_create(278, 60, obj_choosesecondary);
            obj_customizer.weaponslot[1].weapontype = 0;
            obj_customizer.weaponslot[1].secondnumber = 1;
            obj_customizer.weaponslot[2] = instance_create(328, 60, obj_choosesecondary);
            obj_customizer.weaponslot[2].weapontype = 1;
            obj_customizer.weaponslot[2].secondnumber = 2;
            obj_customizer.weaponslot[3] = instance_create(378, 60, obj_choosesecondary);
            obj_customizer.weaponslot[3].weapontype = 1;
            obj_customizer.weaponslot[3].secondnumber = 3;
            obj_customizer.weaponslot[4] = instance_create(428, 60, obj_choosesecondary);
            obj_customizer.weaponslot[4].weapontype = 1;
            obj_customizer.weaponslot[4].secondnumber = 4;
        }
    break;
}
