LIBNAME MyData1 'E:\Users\nxk220078\Desktop\Assignment1'; 

data MyData1.EPA_MPG;
    infile 'E:\Users\nxk220078\Desktop\Assignment1\EPA_MPG.csv';  
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
run;

proc print data=MyData1.EPA_MPG; 
run;








