@echo off

set BUILD_OS=win64
rem set BUILD_OS=win32

set lazpath=c:\d\lazarus

set BUILD_PROFILE=silent

if "%BUILD_OS%" == "win64" (
  set BUILD_CPU=x86_64
)
if "%BUILD_OS%" == "win32" (
  set BUILD_CPU=i386
)
set PATH=%lazpath%;%PATH%


rem ---------------------------------
del /Q doublecmd.exe

if "%1"=="all" (
  call :all
)
if "%1"=="rebuild" (
  call :rebuild
)
if "%1"=="rebuild_run" (
  call :rebuild
  call :run
)
if "%1"=="pack" (
  call :pack
)
if "%1"=="build" (
  call :build
)
if "%1"=="" (
  call :build
  call :run
)

goto:eof

rem ----------------------------------
:all
  echo == Full Build
  echo Build params: %BUILD_PROFILE%, %BUILD_OS%, %BUILD_CPU%, %lazpath%
  pause
  call clean
  call components\build
  call plugins\build
  call :build
goto:eof

:rebuild
  echo == Rebuild
  call clean
  call :build
goto:eof

:build
  echo == Build
  lazbuild -q --bm=%BUILD_PROFILE% --os=%BUILD_OS% --cpu=%BUILD_CPU% src\doublecmd.lpi
goto:eof

:pack
  echo == Package
  mkdir dist\win32 > nul 2>&1
  set BUILD_PROFILE=release
  set BUILD_OS=win32
  set BUILD_CPU=i386
  
  call :all
  copy doublecmd.exe dist\win32\
  
  mkdir dist\win64 > nul 2>&1
  set BUILD_PROFILE=release
  set BUILD_OS=win64
  set BUILD_CPU=x86_64
  
  call :all
  copy doublecmd.exe dist\win64\
goto:eof

:run
  echo == Run
  if exist doublecmd.exe (
    start doublecmd.exe
  )
goto:eof
