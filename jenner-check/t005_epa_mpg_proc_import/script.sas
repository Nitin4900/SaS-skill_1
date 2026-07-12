/* Adapted from HW2_2b.sas -- PROC IMPORT of a small EPA_MPG.csv sample
   (GETNAMES=YES, DATAROW=2), then PROC PRINT and PROC CONTENTS of the
   imported WORK dataset. PROC IMPORT needs an actual file, so the hardcoded
   E:\Users\nxk220078\...\HW1_2\EPA_MPG.csv path (which in the original also
   had a stray mid-filename line break) is replaced by first writing a
   10-row sample of the repo's own EPA_MPG.csv to a temp fileref via
   DATA _NULL_ / PUT, then importing from that fileref -- so the bundle is
   still a single self-contained script the shipped run_jenner.sh runner
   (which uploads only script text, no input/ files) can submit. The
   PROC IMPORT options and both PROCs below are unchanged from the
   original. */

filename epamock temp;
data _null_;
    file epamock;
    put 'Rank,Class,ModelYear,Manufacturer,ModelName,VehicleType,Weight,DriveType,Transmission,Gears,FuelDelivery,Horsepower,EngineDisplacement,MPG_City,MPG_Hwy,AvgMPG';
    put 'Low,Car,1975,GM,TORONADO,Sedan/Wagon,5500,Front,Automatic,,Carb,175,455,7.7,9.4,';
    put 'Low,Car,1976,Jaguar Land Rover,JENSEN,Sedan/Wagon,4500,Rear,Automatic,,Carb,250,440,7.7,9.9,';
    put 'Low,Car,1977,BMW,ROLLS ROYCE,Sedan/Wagon,5500,Rear,Automatic,,Carb,170,412,7.8,8.9,';
    put 'Low,Car,1978,Stellantis,MONACO,Sedan/Wagon,5000,Rear,Automatic,,Carb,240,440,7.5,8.7,';
    put 'Low,Car,1979,Aston Martin,ASTON MARTIN V8,Sedan/Wagon,4500,Rear,Manual,,Carb,60,326,6.8,9.7,';
    put 'Low,Car,1980,Aston Martin,79 ASTON MARTIN,Sedan/Wagon,4500,Rear,Manual,,Carb,275,326,6.8,9.7,';
    put 'Low,Car,1981,BMW,CAMARGUE,Sedan/Wagon,5500,Rear,Automatic,,Port,170,412,8,9.5,';
    put 'Low,Car,1981,BMW,CORNICHE,Sedan/Wagon,5500,Rear,Automatic,,Port,170,412,8,9.5,';
    put 'Low,Car,1982,Stellantis,QUATTROPORTE,Sedan/Wagon,5000,Rear,Automatic with Lockup,,Carb,288,301,7.6,9.8,';
    put 'Low,Car,1983,Stellantis,QUATTROPORTE,Sedan/Wagon,5000,Rear,Automatic with Lockup,,Carb,288,301,7.6,9.8,';
run;

PROC IMPORT OUT= WORK.EPA_MPG_import2
            DATAFILE= epamock
            DBMS=CSV REPLACE;
     GETNAMES=YES;
     DATAROW=2;
RUN;

proc print data=WORK.EPA_MPG_import2; /*To view the dataset on the results screen*/
run;

proc contents data=WORK.EPA_MPG_import2;  /*To get a detailed report of the dataset's attributes*/
run;
