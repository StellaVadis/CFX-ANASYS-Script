# CFX-ANASYS-Script

## Example Command

```
"C:\Program Files\ANSYS Inc\v252\CFX\bin\cfx5solve" -def "D:\Deyi Mimics\Segmentation\CT8\CFX\commandlinetest\30007_winkessel_4_outlets.def" -name "D:\Deyi Mimics\Segmentation\CT8\CFX\commandlinetest\Result" -double -parallel -par-local -partition 4
```

## Command Arguments

| Argument | Description |
|----------|-------------|
| "C:\Program Files\ANSYS Inc\v252\CFX\bin\cfx5solve" | Path to the CFX solver executable |
| -def | Path to the definition file |
| -name | Output directory and result folder name |
| -double | Enable double precision |
| -par-local | Enable distributed computing on local machine |
| -partition 4 | Number of cores to use |

## Important Notes

- Variables must be saved in CFX-Pre for observation in the terminal. If no variables are saved, no output appears in the terminal, but the simulation still runs and generates result files normally.

## Warning

Do not use parallel computing with Windkessel models. These models use external link files, and the MPL naming system creates paths incompatible with Windows. Sequential execution is required for Windkessel simulations.

## Running Multiple Simulations

Two `RunAllSims.bat` batch script files are provided for running consecutive simulations on Windows. Modify them according to your needs.