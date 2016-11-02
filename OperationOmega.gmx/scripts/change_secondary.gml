//Used to switch variables over for selecting a new secondary
var new_secondary = argument0;

global.playership[global.mymid].secondary_selected = new_secondary;
selected_tab = new_secondary;
cursor_secondary_name = global.secondary_name[new_secondary];
current_secondary_name = "";
current_secondary_name_alpha = 2;

obj_mod.alarm[3] = -1;

with(obj_change_weapon)
    instance_destroy();
    
var _weapon_switch_icon = instance_create(0, 0, obj_change_weapon);
_weapon_switch_icon.weapon_image = global.secondary_icon_image[new_secondary];
