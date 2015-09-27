//sql_modify(ipaddress, maxplayers, currentplayers, mode, map, status);

ip = argument0;
time = argument1;
maxplayers = argument2;
currentplayers = argument3;
mode = argument4;
map = argument5;
status = argument6; 

tempbuffer = createbuffer();
sockId = tcpconnect("www.insomniasoft.com", 80, 0, 0);
if(!sockId)
{
show_message("Unable to connect to server");
return 0;
}

setformat(sockId, 1, chr(13) + chr(10));

newLine = chr(13) + chr(10);
clearbuffer(tempbuffer);
writechars("GET /updatematch.php?ip="+argument0+"&time="+argument1+"&max="+string(argument2)+"&count="+string(argument3)+"&mode="+argument4+"&map="+argument5+"&status="+argument6+"+ HTTP/1.0" + newLine, tempbuffer);
writechars("Host: www.insomniasoft.com"+ newLine, tempbuffer);
sendmessage(sockId, "", 0, tempbuffer);
closesocket(sockId);
freebuffer(tempbuffer);
//we don't return anything
