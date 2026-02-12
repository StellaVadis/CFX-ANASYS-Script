@echo off
setlocal enabledelayedexpansion

:: Path to the CFX Solver
set CFX_EXE="C:\Program Files\ANSYS Inc\v252\CFX\bin\cfx5solve"

:: Loop from 1 to 4
for /L %%i in (1,1,4) do (
    echo ==========================================
    echo STARTING SIMULATION %%i OF 4
    echo ==========================================
    
    set FOLDER=D:\Deyi Mimics\Segmentation\CT8\CFX\commandlinetest%%i
    set DEF_FILE=!FOLDER!\30007_winkessel_4_outlets.def
    set OUT_NAME=!FOLDER!\Result
    
    %CFX_EXE% -def "!DEF_FILE!" -name "!OUT_NAME!" -double -parallel -par-local -partition 32
    
    echo Simulation %%i finished.
)

echo ==========================================
echo ALL BATCH JOBS COMPLETE
echo ==========================================
pause