/* Adapted from HW1_3a.sas -- LIBNAME + INFILE (default whitespace-delimited
   list input) reading a small Hotel.dat sample, then PROC PRINT. The
   hardcoded E:\Users\nxk220078\...\HW1_3\Hotel.dat path is replaced with an
   inline DATALINES block carrying a 15-row sample of the repo's own
   Hotel.dat (so this bundle is a single self-contained script, matching
   what the shipped run_jenner.sh runner can submit); the INPUT statement
   and PROC PRINT are unchanged from the original. Note RoomType $ is a
   single list-input token even though several values in the data contain
   embedded spaces (e.g. "Deluxe Suite") -- that is the original
   assignment's own field layout, faithfully reproduced. */
LIBNAME MyData3 '.';

data hotel_data;
    infile datalines;
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
    datalines;
211    3    2  7  2014    2  11  2014    NO         Deluxe Suite    295
214    2    2  2  2014    2  12  2014    NO         Basic no view    75
216    4    2  2  2014    2  13  2014    NO         Suite           255
220    5    2  3  2014    2  12  2014    YES    2    Basic w/view   155
221    3    2  3  2014    2  12  2014    NO         Luxury          195
223    5    2  7  2014    2  13  2014    NO         Suite           255
238    4    1  31  2014    2  13  2014    YES    10    Basic w/view 155
241    1    2  1  2014    2  13  2014    YES    3    Luxury         195
244    5    2  3  2014    2  12  2014    YES    9    Deluxe Suite   295
247    4    2  7  2014    2  11  2014    YES    4    Basic no view   75
248    4    2  8  2014    2  13  2014    YES    5    Basic no view   75
253    3    2  2  2014    2  12  2014    YES    7    Suite          255
255    5    2  8  2014    2  13  2014    NO         Basic w/view    155
270    1    2  4  2014    2  12  2014    NO         Deluxe Suite    295
272    2    2  2  2014    2  11  2014    YES    7    Suite          255
;
run;
proc print data=hotel_data;
run;
