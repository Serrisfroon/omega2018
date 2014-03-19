/*
//Read version information
vnumber = "fullgame";
file_rename("Operation Omega.exe", "Operation Omega old.exe");



//Initialize all information on games
do
{
    sockId = tcpconnect("www.insomniasoft.net", 80, 0, 0);
    if(!sockId)
    {
        show_message("Unable to connect to the database");
        exit;
    }
    
    setformat(sockId, 1, chr(13) + chr(10));
    
    newLine = chr(13) + chr(10);
    clearbuffer(0);
    writechars("GET /"+vnumber+".html HTTP/1.0" + newLine, 0);
    writechars("Host: www.insomniasoft.net"+ newLine, 0);
    sendmessage(sockId, 0, 0, 0);
    
    processHeader = true;
    while(processHeader)
    {
        receivemessage(sockId, 0, 0);
        firstWord = readsep(" ", 0);
        switch(firstWord)
        {
            case ""://blank line
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
    //now we have all page data in retVal
    //show_message(retVal);
    var nextdata, j, datastart;
    nextdata = 0;
    datastart = 0;
    j = 0;
    k = 0;
    closesocket(sockId);
    
    for(i=0 ; i<=string_length(retVal); i+=1) 
    {
        if(string_char_at(retVal,i)="|" || i=string_length(retVal))
        {
            returndata[j, k] = string_copy(retVal, datastart, nextdata-1);
            datastart = i+1;
            nextdata = 0;
            j += 1;
        } 
        if(string_char_at(retVal,i)=";")
        {
            returndata[j, k] = string_copy(retVal, datastart, nextdata-1);
            datastart = i+1;
            nextdata = 0;
            k += 1;
        } 
        nextdata += 1        
    }
    
    
    //Update the version number to the next version
    numberoffiles = real(returndata[0, 0]);
    donefiles = 0;
    directory_create(program_directory+"\Resources");
    //Download any necessary files for this version
    for(i = 1; i < j; i += 1)
    {
        if(file_exists("Resources\"+returndata[i, 0]))
            file_delete("Resources\"+returndata[i, 0]);
        download_file("http://www.insomniasoft.net/version/Resources/"+returndata[i, 0], "Resources\"+returndata[i, 0]);  
        donefiles += 1;
        downloaddone = donefiles/numberoffiles*100;
        draw_set_color(c_black);
        draw_rectangle(0, 0, 300, 200, 0);
        draw_set_color(c_lime);
        draw_text(10, 10, "Downloading: "+string(downloaddone)+"%");
    }

}
until(true);

//Download the latest .exe
download_file("http://www.insomniasoft.net/version/Operation%20Omega.exe", "Operation Omega.exe");


show_message("Operation Omega has finished installing and updating. The game will now restart.");

