
PROC IMPORT OUT= WORK.EPA_MPG_import2 
            DATAFILE= "E:\Users\nxk220078\Desktop\Assignment1\HW1_2\EPA_
MPG.csv" 
            DBMS=CSV REPLACE;
     GETNAMES=YES;
     DATAROW=2; 
RUN;
