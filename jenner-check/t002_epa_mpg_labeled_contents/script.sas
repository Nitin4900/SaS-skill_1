/* Adapted from HW1_1e.sas -- LIBNAME + INFILE with dlm=',' reading a small
   EPA_MPG.csv sample, LABEL statement, then PROC CONTENTS and PROC PRINT.
   The hardcoded E:\Users\nxk220078\...\EPA_MPG.csv path is replaced with an
   inline DATALINES block carrying a 15-row sample of the repo's own
   EPA_MPG.csv (so this bundle is a single self-contained script, matching
   what the shipped run_jenner.sh runner can submit); the INPUT, LABEL, and
   both PROCs are unchanged from the original. */
LIBNAME MyData1 '.';

data MyData1.EPA_MPG;
    infile datalines dlm=',';
    input
        Rank
        Class $
        ModelYear
        Manufacturer $
        ModelName $
        VehicleType $
        Weight
        DriveType $
        Transmission $
        Gears
        FuelDelivery $
        Horsepower
        EngineDisplacement
        MPG_City
        MPG_Hwy
        AvgMPG;

    label
        Manufacturer = 'manufacturername'      /* Label for Manufacturer */
        Weight = 'weight (lbs)'                /* Label for Weight */
        Horsepower = 'horsepower (HP)';        /* Label for Horsepower */
    datalines;
Rank,Class,ModelYear,Manufacturer,ModelName,VehicleType,Weight,DriveType,Transmission,Gears,FuelDelivery,Horsepower,EngineDisplacement,MPG_City,MPG_Hwy,AvgMPG
Low,Car,1975,GM,TORONADO,Sedan/Wagon,5500,Front,Automatic,,Carb,175,455,7.7,9.4,
Low,Car,1976,Jaguar Land Rover,JENSEN,Sedan/Wagon,4500,Rear,Automatic,,Carb,250,440,7.7,9.9,
Low,Car,1977,BMW,ROLLS ROYCE,Sedan/Wagon,5500,Rear,Automatic,,Carb,170,412,7.8,8.9,
Low,Car,1978,Stellantis,MONACO,Sedan/Wagon,5000,Rear,Automatic,,Carb,240,440,7.5,8.7,
Low,Car,1979,Aston Martin,ASTON MARTIN V8,Sedan/Wagon,4500,Rear,Manual,,Carb,60,326,6.8,9.7,
Low,Car,1980,Aston Martin,79 ASTON MARTIN,Sedan/Wagon,4500,Rear,Manual,,Carb,275,326,6.8,9.7,
Low,Car,1981,BMW,CAMARGUE,Sedan/Wagon,5500,Rear,Automatic,,Port,170,412,8,9.5,
Low,Car,1981,BMW,CORNICHE,Sedan/Wagon,5500,Rear,Automatic,,Port,170,412,8,9.5,
Low,Car,1982,Stellantis,QUATTROPORTE,Sedan/Wagon,5000,Rear,Automatic with Lockup,,Carb,288,301,7.6,9.8,
Low,Car,1983,Stellantis,QUATTROPORTE,Sedan/Wagon,5000,Rear,Automatic with Lockup,,Carb,288,301,7.6,9.8,
Low,Car,1984,Stellantis,QUATTROPORTE,Sedan/Wagon,5000,Rear,Automatic with Lockup,,Carb,288,301,7.6,9.8,
Low,Car,1985,Stellantis,QUATTROPORTE,Sedan/Wagon,5000,Rear,Automatic with Lockup,,Carb,288,301,7.6,9.8,
Low,Car,1986,VW,COUNTACH,Sedan/Wagon,3500,Rear,Manual,,Port,420,315,6.1,10.4,
Low,Car,1987,VW,COUNTACH,Sedan/Wagon,3500,Rear,Manual,,Port,420,315,6.1,10.4,
Low,Car,1988,VW,COUNTACH,Sedan/Wagon,3500,Rear,Manual,,Port,420,315,6.1,10.4,
;
run;

/* PROC CONTENTS to describe the dataset */
proc contents data=MyData1.EPA_MPG;
run;

/* Print the data */
proc print data=MyData1.EPA_MPG;
run;
