//adds a chat line to obj_mod's chat. Made into a script for simplicty
//and ease of use
//////////////////////////////////////////////////////////////////////
//argument0 = string
//argument1 = color
//////////////////////////////////////////////////////////////////////
for(i = 0; i < 4; i += 1)
{
 chatline[i] = chatline[i+1];
 chatcolor[i] = chatcolor[i+1];
 chatalpha[i] = chatalpha[i+1];
}
chatcolor[4] = argument1;
chatline[4] = argument0;
chatalpha[4] = 3;

for(i = 0; i < 16; i += 1)
{
 extchatline[i] = extchatline[i+1];
}
extchatline[16] = argument0;
