#include <windows.h>
#include <stdio.h>
#include <versionhelpers.h>

main() {
  fputs(IsWindowsServer() ? "true" : "false", stdout);
}
