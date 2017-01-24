//Translates a value into a screen shake value

obj_camera.screen_shaking = min(obj_camera.screen_shaking+(argument0*obj_mod.screen_scaling_ratio), 30*obj_mod.screen_scaling_ratio);
