LIBNAME MyData1 'E:\Users\nxk220078\Desktop\Assignment1';

data MyData1.EPA_MPG;
    infile 'E:\Users\nxk220078\Desktop\Assignment1\EPA_MPG.csv' dlm=',';  
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
run;

proc print data=MyData1.EPA_MPG; 
run;
