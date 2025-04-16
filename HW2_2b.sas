
PROC IMPORT OUT= WORK.EPA_MPG_import2 
            DATAFILE= "E:\Users\nxk220078\Desktop\Assignment1\HW1_2\EPA_
MPG.csv" 
            DBMS=CSV REPLACE;
     GETNAMES=YES;
     DATAROW=2; 
RUN;

proc print data=WORK.EPA_MPG_import2; /*To view the dataset on the results screen*/
run;

proc contents data=WORK.EPA_MPG_import2;  /*To get a detailed report of the dataset's attributes*/
run;
