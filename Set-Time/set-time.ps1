w32tm /config /manualpeerlist:"time.windows.com" /syncfromflags:manual /reliable:yes /update
 
net stop w32time
net start w32time

sleep 10
 
w32tm /resync
 
