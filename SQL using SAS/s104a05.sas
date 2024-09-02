***********************************************************;
*  Activity 4.05                                          *;
*  1) Examine and run the query. Examine the log and the  *;
*     results. What note do you see in the log?           *;
*  2) Add the PROC SQL option NOREMERGE. Run the query.   *;
*     Did it run successfully? What was the error in the  *;
*     log?                                                *;
*  3) Add a GROUP BY clause after the FROM clause and     *;
*     group by Region. Run the query. Did it run          *;
*     successfully?                                       *;
***********************************************************;

proc sql;
select Region, 
       sum(PopEstimate1) as TotalRegion format=comma14.
    from sq.statepopulation;
quit;
















************************************************************;
* SOLUTIONS                                                *;
************************************************************;
/*
proc sql noremerge;
select Region, 
       sum(PopEstimate1) as TotalRegion format=comma14.
    from sq.statepopulation;
quit;


proc sql noremerge;
select Region, 
       sum(PopEstimate1) as TotalRegion format=comma14.
    from sq.statepopulation
	group by region;
quit;
*/