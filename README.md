# CFX-ANASYS-Script



```

"C:\Program Files\ANSYS Inc\v252\CFX\bin\cfx5solve" -def "D:\Deyi Mimics\Segmentation\CT8\CFX\commandlinetest\30007_winkessel_4_outlets.def" -name "D:\Deyi Mimics\Segmentation\CT8\CFX\commandlinetest\Result" -double -parallel -par-local -partition 4

```





"C:\Program Files\ANSYS Inc\v252\CFX\bin\cfx5solve" is the path of the cfxsolver program

-def is for the definition file

-name:  "D:\Deyi Mimics\Segmentation\CT8\CFX\commandlinetest is where you want to create the result folder, and the "Result" is the name of the result folder.

-double is the double precision

-par-local means you want to use distributed computing on your own machine, the 4 is the number of cores.





Notice that, if you do not save some variables for observation in the CFX-pre, then you see nothing in the terminal. However, the program can still run and the result file is generated in normal.


# Warning:
1. When run the windkessel model, please do not use the parallel computing because windkessel models use the outer link files. The naming system for MPL will create a path which is incompatiable with Windows system. Therefore, you can not parallel run the code. I will try to fix it later.
