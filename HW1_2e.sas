
data cars;
    input car1 car2 car3;
    datalines;
    36.31 72.3 56.45
    41.57 82.50 98.23
    56.45 84.61 75.92;
run;

/* Calculate Means and output to a dataset */
proc means data=cars mean noprint;
    var car1 car2 car3;
    output out=avg_car mean(car1)=mean_car1 mean(car2)=mean_car2 mean(car3)=mean_car3;
run;

/* Print the output dataset */
proc print data=avg_car; 
run;
