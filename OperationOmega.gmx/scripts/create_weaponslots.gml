obj_chooseprimary.x = 213;
obj_chooseprimary.y = 34;
switch(global.shipselect)
{
    //Alphastar
    case 1:
        obj_customizer.weaponslot[1] = instance_create(268, 34, obj_choosesecondary);
        obj_customizer.weaponslot[1].weapontype = 0;
        obj_customizer.weaponslot[1].secondnumber = 1;
        obj_customizer.weaponslot[1].weaponnumber = 1;
        if(global.spacetype = 0)
        {
            obj_customizer.weaponslot[2] = instance_create(308, 34, obj_choosesecondary);
            obj_customizer.weaponslot[2].weapontype = 1;
            obj_customizer.weaponslot[2].secondnumber = 2;
            obj_customizer.weaponslot[2].weaponnumber = 1;
            obj_customizer.weaponslot[3] = instance_create(348, 34, obj_choosesecondary);
            obj_customizer.weaponslot[3].weapontype = 1;
            obj_customizer.weaponslot[3].secondnumber = 3;
            obj_customizer.weaponslot[3].weaponnumber = 2;
            obj_customizer.weaponslot[4] = instance_create(388, 34, obj_choosesecondary);
            obj_customizer.weaponslot[4].weapontype = 0;
            obj_customizer.weaponslot[4].secondnumber = 4;
            obj_customizer.weaponslot[4].weaponnumber = 2;    
        }
        else
        {
            obj_customizer.weaponslot[2] = instance_create(308, 34, obj_choosesecondary);
            obj_customizer.weaponslot[2].weapontype = 0;
            obj_customizer.weaponslot[2].secondnumber = 2;
            obj_customizer.weaponslot[2].weaponnumber = 2;
            obj_customizer.weaponslot[3] = instance_create(348, 34, obj_choosesecondary);
            obj_customizer.weaponslot[3].weapontype = 1;
            obj_customizer.weaponslot[3].secondnumber = 3;
            obj_customizer.weaponslot[3].weaponnumber = 1;
            obj_customizer.weaponslot[4] = instance_create(388, 34, obj_choosesecondary);
            obj_customizer.weaponslot[4].weapontype = 1;
            obj_customizer.weaponslot[4].secondnumber = 4;
            obj_customizer.weaponslot[4].weaponnumber = 2;        
        }
    break;
    
    //Swiftwing
    case 2:
        obj_customizer.weaponslot[1] = instance_create(268, 34, obj_choosesecondary);
        obj_customizer.weaponslot[1].weapontype = 0;
        obj_customizer.weaponslot[1].secondnumber = 1;
        obj_customizer.weaponslot[1].weaponnumber = 1;
        obj_customizer.weaponslot[2] = instance_create(308, 34, obj_choosesecondary);
        obj_customizer.weaponslot[2].weapontype = 0;
        obj_customizer.weaponslot[2].secondnumber = 2;
        obj_customizer.weaponslot[2].weaponnumber = 2;
        if(global.spacetype = 0)
        {
            obj_customizer.weaponslot[3] = instance_create(348, 34, obj_choosesecondary);
            obj_customizer.weaponslot[3].weapontype = 1;
            obj_customizer.weaponslot[3].secondnumber = 3;
            obj_customizer.weaponslot[3].weaponnumber = 1;
            obj_customizer.weaponslot[4] = instance_create(388, 34, obj_choosesecondary);
            obj_customizer.weaponslot[4].weapontype = 0;
            obj_customizer.weaponslot[4].secondnumber = 4;
            obj_customizer.weaponslot[4].weaponnumber = 3;    
        }
        else
        {
            obj_customizer.weaponslot[3] = instance_create(348, 34, obj_choosesecondary);
            obj_customizer.weaponslot[3].weapontype = 0;
            obj_customizer.weaponslot[3].secondnumber = 3;
            obj_customizer.weaponslot[3].weaponnumber = 3;
            obj_customizer.weaponslot[4] = instance_create(388, 34, obj_choosesecondary);
            obj_customizer.weaponslot[4].weapontype = 1;
            obj_customizer.weaponslot[4].secondnumber = 4;
            obj_customizer.weaponslot[4].weaponnumber = 1;        
        }
    break;
    
    //Goliath
    case 3:
        if(global.spacetype = 0)
        {
            obj_customizer.weaponslot[1] = instance_create(268, 34, obj_choosesecondary);
            obj_customizer.weaponslot[1].weapontype = 1;
            obj_customizer.weaponslot[1].secondnumber = 1;
            obj_customizer.weaponslot[1].weaponnumber = 1;
            obj_customizer.weaponslot[2] = instance_create(308, 34, obj_choosesecondary);
            obj_customizer.weaponslot[2].weapontype = 1;
            obj_customizer.weaponslot[2].secondnumber = 2;
            obj_customizer.weaponslot[2].weaponnumber = 2;
            obj_customizer.weaponslot[3] = instance_create(348, 34, obj_choosesecondary);
            obj_customizer.weaponslot[3].weapontype = 1;
            obj_customizer.weaponslot[3].secondnumber = 3;
            obj_customizer.weaponslot[3].weaponnumber = 3;
            obj_customizer.weaponslot[4] = instance_create(388, 34, obj_choosesecondary);
            obj_customizer.weaponslot[4].weapontype = 0;
            obj_customizer.weaponslot[4].secondnumber = 4;
            obj_customizer.weaponslot[4].weaponnumber = 1;    
        }
        else
        {
            obj_customizer.weaponslot[1] = instance_create(268, 34, obj_choosesecondary);
            obj_customizer.weaponslot[1].weapontype = 0;
            obj_customizer.weaponslot[1].secondnumber = 1;
            obj_customizer.weaponslot[1].weaponnumber = 1;
            obj_customizer.weaponslot[2] = instance_create(308, 34, obj_choosesecondary);
            obj_customizer.weaponslot[2].weapontype = 1;
            obj_customizer.weaponslot[2].secondnumber = 2;
            obj_customizer.weaponslot[2].weaponnumber = 1;
            obj_customizer.weaponslot[3] = instance_create(348, 34, obj_choosesecondary);
            obj_customizer.weaponslot[3].weapontype = 1;
            obj_customizer.weaponslot[3].secondnumber = 3;
            obj_customizer.weaponslot[3].weaponnumber = 2;
            obj_customizer.weaponslot[4] = instance_create(388, 34, obj_choosesecondary);
            obj_customizer.weaponslot[4].weapontype = 1;
            obj_customizer.weaponslot[4].secondnumber = 4;
            obj_customizer.weaponslot[4].weaponnumber = 3;        
        }
    break;
}
