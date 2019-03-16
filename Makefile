.PHONY: all
all: is-windows-server.exe

is-windows-server.exe: is-windows-server.c include/um include/shared
	cl /I include/um /I include/shared is-windows-server.c

include/um: include/um.zip
	powershell -c Expand-Archive include/um.zip -Destination include

include/shared: include/shared.zip
	powershell -c Expand-Archive include/shared.zip -Destination include

include/um.zip:
	-mkdir include
	powershell -C Compress-Archive "'C:\Program Files (x86)\Windows Kits\8.1\Include\um'" -Destination include/um.zip

include/shared.zip:
	-mkdir include
	powershell -C Compress-Archive "'C:\Program Files (x86)\Windows Kits\8.1\Include\shared'" -Destination include/shared.zip
