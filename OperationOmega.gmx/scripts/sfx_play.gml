//sfx_play(sound, x, y)

var object, filestring, soundcount, soundx, soundy;
filestring = argument0;
soundx = argument1;
soundy = argument2;
soundcount = instance_number(obj_soundeffect);

if(global.sfxtoggle = 1)
    return 0;
if(soundcount >= 8)
    with(obj_soundeffect)
        if(soundnumber >= 8)
        {
            audio_stop_sound(sfx);
            audio_emitter_free(emitter);
            instance_destroy();
        }

with(obj_soundeffect)
    soundnumber += 1;
object = instance_create(soundx, soundy, obj_soundeffect);
object.sound = filestring;
object.soundnumber = 1;
with(object)
{
    emitter = audio_emitter_create();
    audio_emitter_position(emitter, (view_xview[0]+view_wview[0]/2-x)/2, (y-view_yview[0]+view_hview[0]/2)/2, 0);
    sfx = audio_play_sound_on(emitter, sound, 0, 1);
}