@echo off
set CFX_EXE="C:\Program Files\ANSYS Inc\v252\CFX\bin\cfx5solve"

echo ==========================================
echo Starting Simulation 1 of 4
echo ==========================================
%CFX_EXE% -def "D:\Deyi Mimics\Segmentation\CT8\CFX\commandlinetest1\30007_winkessel_4_outlets.def" -name "D:\Deyi Mimics\Segmentation\CT8\CFX\commandlinetest1\Result" -double -parallel -par-local -partition 32

echo ==========================================
echo Starting Simulation 2 of 4
echo ==========================================
%CFX_EXE% -def "D:\Deyi Mimics\Segmentation\CT8\CFX\commandlinetest2\30007_winkessel_4_outlets.def" -name "D:\Deyi Mimics\Segmentation\CT8\CFX\commandlinetest2\Result" -double -parallel -par-local -partition 32

echo ==========================================
echo Starting Simulation 3 of 4
echo ==========================================
%CFX_EXE% -def "D:\Deyi Mimics\Segmentation\CT8\CFX\commandlinetest3\30007_winkessel_4_outlets.def" -name "D:\Deyi Mimics\Segmentation\CT8\CFX\commandlinetest3\Result" -double -parallel -par-local -partition 32

echo ==========================================
echo Starting Simulation 4 of 4
echo ==========================================
%CFX_EXE% -def "D:\Deyi Mimics\Segmentation\CT8\CFX\commandlinetest4\30007_winkessel_4_outlets.def" -name "D:\Deyi Mimics\Segmentation\CT8\CFX\commandlinetest4\Result" -double -parallel -par-local -partition 32

echo ==========================================
echo ALL SIMULATIONS COMPLETE
echo ==========================================
pause