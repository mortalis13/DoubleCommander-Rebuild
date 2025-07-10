@echo off
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

@echo Clean up plugins output directories
@del /Q /S plugins\*.dsx > nul 2>&1
@del /Q /S plugins\*.w?x > nul 2>&1

@del /Q /S plugins\dsx\DSXLocate\lib\*.* > nul 2>&1

@del /Q /S plugins\wcx\base64\lib\*.* > nul 2>&1
@del /Q /S plugins\wcx\cpio\lib\*.* > nul 2>&1
@del /Q /S plugins\wcx\deb\lib\*.* > nul 2>&1
@del /Q /S plugins\wcx\rpm\lib\*.* > nul 2>&1
@del /Q /S plugins\wcx\sevenzip\lib\*.* > nul 2>&1
@del /Q /S plugins\wcx\torrent\lib\*.* > nul 2>&1
@del /Q /S plugins\wcx\unrar\lib\*.* > nul 2>&1
@del /Q /S plugins\wcx\zip\lib\*.* > nul 2>&1

@del /Q /S plugins\wdx\deb_wdx\lib\*.* > nul 2>&1
@del /Q /S plugins\wdx\rpm_wdx\lib\*.* > nul 2>&1
@del /Q /S plugins\wdx\audioinfo\lib\*.* > nul 2>&1

@del /Q /S plugins\wfx\ftp\lib\*.* > nul 2>&1
@del /Q /S plugins\wfx\sample\lib\*.* > nul 2>&1

@del /Q /S plugins\wlx\preview\lib\*.* > nul 2>&1
@del /Q /S plugins\wlx\richview\lib\*.* > nul 2>&1
@del /Q /S plugins\wlx\simplewlx\lib\*.* > nul 2>&1
@del /Q /S plugins\wlx\wmp\lib\*.* > nul 2>&1

@echo Remove backup files
@del /Q /S plugins\*.*~ > nul 2>&1
@del /Q /S plugins\*.bak > nul 2>&1

@echo Clean up components output directories

@del /Q /S components\chsdet\lib\*.* > nul 2>&1
@del /Q /S components\kascrypt\lib\*.* > nul 2>&1
@del /Q /S components\doublecmd\lib\*.* > nul 2>&1
@del /Q /S components\gifanim\lib\*.* > nul 2>&1
@del /Q /S components\KASToolBar\lib\*.* > nul 2>&1
@del /Q /S components\multithreadprocs\lib\*.* > nul 2>&1
@del /Q /S components\viewer\lib\*.* > nul 2>&1
@del /Q /S components\synunihighlighter\lib\*.* > nul 2>&1
@del /Q /S components\virtualterminal\lib\*.* > nul 2>&1

@echo.
