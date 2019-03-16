#include <windows.h>
#include <stdio.h>
#include <VersionHelpers.h>

main() {
  fputs(IsWindowsServer() ? "true" : "false", stdout);
}
