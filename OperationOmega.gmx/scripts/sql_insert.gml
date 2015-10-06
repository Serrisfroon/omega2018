/*
time = argument0;
name = argument1;
username = argument2;
mode = argument3;
map = argument4;
*/
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
writechars("GET /placematch.php?time="+argument0+"&name="+argument1+"&user="+argument2+"&max=8&count=1&mode="+argument3+"&map="+argument4+"&status=Waiting+ HTTP/1.0" + newLine, tempbuffer);
writechars("Host: www.insomniasoft.com"+ newLine, tempbuffer);
sendmessage(sockId, "", 0, tempbuffer);

processHeader = true;
while(processHeader)
{
 receivemessage(sockId, 0, 0);
 firstWord = readsep(" ", 0);
 switch(firstWord)
 {
  case "":  //blank line
   processHeader = false;
  break;
  
  //read important stuff from header...
 }
}

setformat(sockId, 2, 0);
retVal = "";
while(1)
{
 size = receivemessage(sockId, 6000, 0);
 if(size > 0)
  retVal += readchars(size, 0);
 else break;
}
return retVal;

closesocket(sockId);
freebuffer(tempbuffer);
//we don't return anything