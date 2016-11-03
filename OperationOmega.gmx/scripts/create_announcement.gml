//create_announcement(message, color);

with(obj_announcement_message)
    second_messages += 1;
var _announcement = instance_create(0, 0, obj_announcement_message);
_announcement.message = argument0;
_announcement.color = argument1;
