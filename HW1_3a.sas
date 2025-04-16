LIBNAME MyData3 "E:\Users\nxk220078\Desktop\Assignment1\HW1_3";

data hotel_data;
    infile 'E:\Users\nxk220078\Desktop\Assignment1\HW1_3\Hotel.dat';
    input 
        RoomNumber 
        NumGuests 
        CheckInMonth $ 
        CheckInDay 
        CheckInYear 
        CheckOutMonth $ 
        CheckOutDay 
        CheckOutYear 
        InternetUsage $ 
        NumDaysInternetUse 
        RoomType $ 
        RoomRate;
run;
proc print data=hotel_data; 
run;
