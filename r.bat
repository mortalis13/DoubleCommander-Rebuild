@echo off

set lazpath=d:\progs\lazarus-2.2.6

set BUILD_OS=win64
if %BUILD_OS%==win64 (
  set BUILD_CPU=x86_64
)
if %BUILD_OS%==win32 (
  set BUILD_CPU=i386
)

set BUILD_PROFILE=debug
if not "%2"=="" (
  set BUILD_PROFILE=%2
)

set PATH=%lazpath%;%PATH%

rem ---------------------------------
del /Q doublecmd.exe

set op=default
if not "%1"=="" set op=%1
if %op%==a set op=all
if %op%==b set op=build
if %op%==r set op=rebuild
if %op%==p set op=pack
if %op%==c set op=clean_dev
if %op%==ca set op=clean_all

if %op%==all (
  call :all
)
if %op%==rebuild (
  call :rebuild
)
if %op%==pack (
  call :pack
)
if %op%==build (
  call :build
)
if %op%==clean_dev (
  call clean_dev
)
if %op%==clean_all (
  call clean
)
if %op%==default (
  call :build
  call run
)

goto:eof

rem ----------------------------------
:all
  echo [[Full Build]]
  echo Build params: %BUILD_PROFILE%, %BUILD_OS%, %BUILD_CPU%, %lazpath%
  echo.
  call clean
  call components\build
  call plugins\build
  call :build
goto:eof

:rebuild
  echo [[Rebuild]]
  call clean_dev
  call :build
goto:eof

:build
  echo [Build]
  lazbuild --bm=%BUILD_PROFILE% --os=%BUILD_OS% --cpu=%BUILD_CPU% src\doublecmd.lpi
  echo.
  echo Built for: %BUILD_PROFILE%, %BUILD_OS%, %BUILD_CPU%, %lazpath%
goto:eof

:pack
  echo [[Package]]
  set BUILD_PROFILE=release
  
  mkdir dist\win32 > nul 2>&1
  set BUILD_OS=win32
  set BUILD_CPU=i386
  call :all
  copy doublecmd.exe dist\win32\
  
  mkdir dist\win64 > nul 2>&1
  set BUILD_OS=win64
  set BUILD_CPU=x86_64
  call :all
  copy doublecmd.exe dist\win64\
goto:eof
