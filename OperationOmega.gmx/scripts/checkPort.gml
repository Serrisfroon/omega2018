/*
example: ret=checkPort(4996);

argument0  = port

return:  0 = Blocked
 1 = Open
-1 = Error
*/
var port,tcp,data,a,b, listenport, time;
port=argument0;


// make post request
data="IP="+get_externalip()+"&port="+string(port)+"&submit=Check"

tcp = tcpconnect("canyouseeme.org", 80, 0, 0);
if(!tcp)return "";
setformat(tcp, 1, "<br>"); //set format to html mode to receive <br> lines

//send post request
clearbuffer(0);
writechars("POST / HTTP/1.1" + chr(13) + chr(10), 0);
writechars("Host: canyouseeme.org" + chr(13) + chr(10), 0);
writechars("Keep-Alive: 300" + chr(13) + chr(10), 0);
writechars("Connection: keep-alive" + chr(13) + chr(10), 0);
writechars("User-Agent: Mozilla/4.0" + chr(13) + chr(10), 0);
writechars("Content-Type: application/x-www-form-urlencoded" + chr(13) + chr(10), 0);
writechars("Content-Length: " + string(string_length(data)) + chr(13) + chr(10), 0);
writechars(chr(13) + chr(10), 0);
writechars(data, 0);
sendmessage(tcp, 0, 0, 0);

listenport = tcplisten(14800, 1, true, 0);
time = date_current_datetime()
while (true)// infinite loop
{
a = receivemessage(tcp, 0, 0);  // receive data
if(a == 0)
{
    if(date_second_span(time, date_current_datetime()) <= 10)
        continue;
    else
    {
        closesocket(tcp);
        closesocket(listenport);
        return -1
        break;    
    }
}
//show_message("bytes: " +string(a));
b = readchars(bytesleft(0), 0)
if string_count("Success",b) > 0 // until Keyword "Success" is found
{
closesocket(tcp);
closesocket(listenport);
return 1
break;
}
if string_count("Error",b) > 0 // or Keyword "Error" is found
{
closesocket(tcp);
closesocket(listenport);
return 0
break;
}
if b==""// Error if nothing found
{
closesocket(tcp);
closesocket(listenport);
return -1
break;
}
}
