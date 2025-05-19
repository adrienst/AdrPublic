w32tm /config /manualpeerlist:"time.windows.com" /syncfromflags:manual /reliable:yes /update
w32tm /config /update
restart-service w32time
