screen_scaling_ratio = view_hview[0]/480;

///////////////////////////////////////
//Stasis Field Shader
///////////////////////////////////////
if(instance_exists(obj_stasis_field) || instance_exists(obj_enemystasis_field))
{
    //Update surfaces
    if(!surface_exists(magnify1))
        magnify1 = surface_create(view_wport[0], view_hport[0]);
    if(!surface_exists(magnify2))
        magnify2 = surface_create(view_wport[0], view_hport[0]);
            
    //Initialize surface tracking variables    
    previous_surface = application_surface;
    current_surface = magnify1;
    next_surface = magnify2;
    
    //Reset shader values for this frame
    var_time_var+=0.04;
    var_resolution_x = view_wport[0];
    var_resolution_y = view_hport[0];
    
    
    shader_set(shd_magnify);
        //Set shader values for this frame
        shader_set_uniform_f(uni_time, var_time_var);
        shader_set_uniform_f(uni_resolution, var_resolution_x, var_resolution_y);
        shader_set_uniform_f(uni_circle_zoom_min, var_circle_zoom_min);
        shader_set_uniform_f(uni_circle_zoom_max, var_circle_zoom_max);
        //Apply the shader once for each instance of a stasis field
        with(obj_stasis_field)
        {
            shader_set_uniform_f(obj_mod.uni_mouse_pos, (x-view_xview[0])/obj_mod.screen_scaling_ratio, (y-view_yview[0])/obj_mod.screen_scaling_ratio);
            shader_set_uniform_f(obj_mod.uni_circle_radius, 0.28*image_xscale/obj_mod.screen_scaling_ratio);
            surface_set_target(obj_mod.current_surface);
            draw_surface(obj_mod.previous_surface,0,0);
            obj_mod.previous_surface = obj_mod.current_surface;
            obj_mod.current_surface = obj_mod.next_surface;
            obj_mod.next_surface = obj_mod.previous_surface;
            surface_reset_target();
        }
        with(obj_enemystasis_field)
        {
            shader_set_uniform_f(obj_mod.uni_mouse_pos, (x-view_xview[0])/obj_mod.screen_scaling_ratio, (y-view_yview[0])/obj_mod.screen_scaling_ratio);
            shader_set_uniform_f(obj_mod.uni_circle_radius, 0.28*image_xscale/obj_mod.screen_scaling_ratio);
            surface_set_target(obj_mod.current_surface);
            draw_surface(obj_mod.previous_surface,0,0);
            obj_mod.previous_surface = obj_mod.current_surface;
            obj_mod.current_surface = obj_mod.next_surface;
            obj_mod.next_surface = obj_mod.previous_surface;
            surface_reset_target();
        }
        //Draw the result to the screen
        draw_surface(previous_surface, 0, 0);
    shader_reset();
}
 
