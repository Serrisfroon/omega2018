//Creates a screen shake effect when called for.

if(screen_shake_intensity > 0.4)
{
    // Edit Out Either Of These To Allow For Just Horizontal Or Vertical
    modify_x += round(random(24) - random(24));
    modify_y += round(random(24) - random(24));
}
    
screen_shake_intensity -= 0.4;

if(screen_shake_intensity < 0)
{
    screen_shake_intensity = 0;
    if(modify_x != 0)
    {
        if(modify_x-8 > 0)
        {
            modify_x -= 8;
        }
        else
        {
            if(modify_x+8 < 0)
            {
                modify_x += 8;
            }
            else
            {
                modify_x = 0;
            }
        }
                
    }
    if(modify_y != 0)
    {
        if(modify_y-8 > 0)
        {
            modify_y -= 8;
        }
        else
        {
            if(modify_y+8 < 0)
            {
                modify_y += 8;
            }
            else
            {
                modify_y = 0;
            }
        }
                
    }
}

view_xview[0] = argument0.x-(view_wview[0]/2)+modify_x;
view_yview[0] = argument0.y-(view_hview[0]/2)+modify_y;
