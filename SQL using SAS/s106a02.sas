***********************************************************;
*  Activity 6.02                                          *;
*  1) Run the program in STEP 1 to create the macro       *;
*     variables MaxPop and TotalCtry. The macro variables *;
*     store the estimated maximum three-year population   *;
*     estimate for a country and the total number of      *;
*     countries. View the log. Notice that MaxPop stores  *;
*     a value in scientific notation.                     *;
*  2) Examine STEP 2 of the program to find the country   *;
*     with the maximum estimated three-year population.   *;
*     Run the program to use the macro variables that you *;
*     created. Confirm that no rows were returned.        *;
*  3) Add the FORMAT=10. column modifier to the           *;
*     max(estYear3Pop) column in STEP 1. Run the entire   *;
*     program. Which country has the largest three-year   *;
*     estimated population?                               *;
***********************************************************;

*********;
*STEP 1 *;
*********;
proc sql noprint;
select max(EstYear3Pop), count(distinct CountryCode)
    into :MaxPop trimmed, :TotalCtry trimmed
    from sq.globalfull;
quit;
%put &=MaxPop &=TotalCtry;



*********;
*STEP 2 *;
*********;
title "Country with the Largest 3 Year Estimated Population";
title2 "Out of &TotalCtry Countries";
proc sql;
select distinct CountryCode, ShortName, Region, 
       EstYear3Pop format=comma16.
    from sq.globalfull
    where EstYear3Pop = &MaxPop;
quit;
title;






















************************************************************;
* SOLUTIONS                                                *;
************************************************************;
/*
proc sql noprint;
select max(EstYear3Pop) format=10., count(distinct CountryCode)
    into :MaxPop trimmed, :TotalCtry trimmed
    from sq.globalfull;
quit;
%put &=MaxPop &=TotalCtry;


title "Country with the Largest 3 Year Estimated Population";
title2 "Out of &TotalCtry Countries";
proc sql;
select distinct CountryCode, ShortName, Region, 
       EstYear3Pop format=comma16.
    from sq.globalfull
    where EstYear3Pop = &MaxPop;
quit;
title;
*/