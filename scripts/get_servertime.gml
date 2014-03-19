/*
script will return your network ip address. It connects to whatismyip.com:80 which sends
the ip address in the form of a http payload packet.
*/
sockId = tcpconnect("insomniasoft.net", 80, 0, 0);
if(!sockId)
{
 show_message("Unable to connect");
 exit;
}

setformat(sockId, 1, chr(13) + chr(10));

newLine = chr(13) + chr(10);
clearbuffer(0);
writechars("GET /currenttime.php HTTP/1.0" + newLine, 0);
writechars("Host: insomniasoft.net" + newLine, 0);
sendmessage(sockId, 0, 0, 0);

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
