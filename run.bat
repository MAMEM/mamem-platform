start "EPOC2LSL" cmd /c build\EPOC2LSL\EPOC2LSL.exe
start "LSL2SocketIO" cmd /c build\LSL2SocketIO\LSL2SocketIO.exe
start "Node" cmd /c "cd application-networking\SocketIO-Node & node server"
