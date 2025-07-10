@echo off

rem Compiling components

rem Do not execute this script directly.
rem This script is called from ..\build.bat.

echo [Build Components]

pushd components
lazbuild -q chsdet\chsdet.lpk                        --os=%BUILD_OS%    --cpu=%BUILD_CPU%
lazbuild -q multithreadprocs\multithreadprocslaz.lpk --os=%BUILD_OS%    --cpu=%BUILD_CPU%
lazbuild -q kascrypt\kascrypt.lpk                    --os=%BUILD_OS%    --cpu=%BUILD_CPU%
lazbuild -q doublecmd\doublecmd_common.lpk           --os=%BUILD_OS%    --cpu=%BUILD_CPU%
lazbuild -q Image32\Image32.lpk                      --os=%BUILD_OS%    --cpu=%BUILD_CPU%
lazbuild -q KASToolBar\kascomp.lpk                   --os=%BUILD_OS%    --cpu=%BUILD_CPU%
lazbuild -q viewer\viewerpackage.lpk                 --os=%BUILD_OS%    --cpu=%BUILD_CPU%
lazbuild -q gifanim\pkg_gifanim.lpk                  --os=%BUILD_OS%    --cpu=%BUILD_CPU%
lazbuild -q synunihighlighter\synuni.lpk             --os=%BUILD_OS%    --cpu=%BUILD_CPU%
lazbuild -q virtualterminal\virtualterminal.lpk      --os=%BUILD_OS%    --cpu=%BUILD_CPU%
popd

@echo.
