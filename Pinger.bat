@echo off
chcp 65001 >nul
title  Skipper - Ready to Ping
color a
:menu
echo:
echo       	                      .                          
echo       	                      M                          
echo       	                     dM                          
echo       	                     MMr                         
echo       	                    4MMML                  .     
echo       	                    MMMMM.                xf     
echo       	    .              "MMMMM               .MM-     
echo       	     Mh..          +MMMMMM            .MMMM      
echo       	     .MMM.         .MMMMML.          MMMMMh      
echo       	      )MMMh.        MMMMMM         MMMMMMM       
echo       	       3MMMMx.     'MMMMMMf      xnMMMMMM"       
echo       	       '*MMMMM      MMMMMM.     nMMMMMMP"        
echo       	         *MMMMMx    "MMMMM\    .MMMMMMM=         
echo       	          *MMMMMh   "MMMMM"   JMMMMMMP           
echo       	            MMMMMM   3MMMM.  dMMMMMM            .
echo       	             MMMMMM  "MMMM  .MMMMM(        .nnMP"
echo       	 =..          *MMMMx  MMM"  dMMMM"    .nnMMMMM*  
echo       	   "MMn...     'MMMMr 'MM   MMM"   .nMMMMMMM*"   
echo       	    "4MMMMnn..   *MMM  MM  MMP"  .dMMMMMMM""     
echo       	      ^MMMMMMMMx.  *ML "M .M*  .MMMMMM**"        
echo       	         ^PMMMMMMhn. *x " M  .MMMM**""           
echo       	            ""**MMMMhx/.h/ .=*"                  
echo       	                     .3P"%....                   
echo       	                   nP"     "*MMnx       Skipper
echo:
echo:

set /p ip="%USERNAME%@Skipper/ip-pinger: " 

:ping
PING -n 1 %ip% | FIND "TTL=" 
IF ERRORLEVEL 1 (SET in=c & echo SLAMMED & title SLAMMED)
rem made by Skipper / _nolimit.
ping -t 2 0 10 127.0.0.1 >nul
title  Skipper - Pinging.
color 9
PING -n 1 %ip% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo SLAMMED)
rem made by Skipper / _nolimit.
ping -t 2 0 10 127.0.0.1 >nul
title  Skipper - Pinging..
color 3
PING -n 1 %ip% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo SLAMMED)
rem made by Skipper / _nolimit. (824354197452357643)
ping -t 2 0 10 127.0.0.1 >nul
title  Skipper - Pinging...
color b
goto ping