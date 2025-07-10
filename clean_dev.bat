@echo Clean up output directory
@del /Q /S units\i386-win32-win32\*.* > nul 2>&1
@del /Q /S units\x86_64-win64-win32\*.* > nul 2>&1
@del /Q src\*.*~ > nul 2>&1
@del /Q src\*.~* > nul 2>&1
@del /Q doublecmd.dbg > nul 2>&1
@del /Q doublecmd.zdli > nul 2>&1
@del /Q doublecmd*.exe > nul 2>&1
@del /Q doublecmd*.old > nul 2>&1

@echo Clean up tools output directories
@del /Q /S tools\lib\*.* > nul 2>&1
@del /Q tools\extractdwrflnfo.exe > nul 2>&1

@echo.
