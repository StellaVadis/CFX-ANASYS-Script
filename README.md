# CFX Ansys Execution Script Guide

This repository contains the standardized command-line configuration for running **Ansys CFX** simulations, specifically optimized for hemodynamics models (Windkessel boundary conditions) on local machines.

## 🚀 Execution Command

Run the following command in the **Command Prompt** or a **Batch (.bat) script**:

```batch
"C:\Program Files\ANSYS Inc\v252\CFX\bin\cfx5solve" ^
-def "D:\Deyi Mimics\Segmentation\CT8\CFX\commandlinetest\30007_winkessel_4_outlets.def" ^
-name "D:\Deyi Mimics\Segmentation\CT8\CFX\commandlinetest\Result" ^
-double -parallel -par-local -partition 4
