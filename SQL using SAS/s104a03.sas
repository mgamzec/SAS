***********************************************************;
*  Activity 4.03                                          *;
*  1) Complete the query using the ANY keyword or MAX     *;
*     statistic.                                          *;
*  2) Run the query. How many states have estimated       *;
*     populations lower than New York or Florida?         *;
***********************************************************;

proc sql number;
select Name, PopEstimate1
    from sq.statepopulation
/*Complete*/
    where PopEstimate1 < (select PopEstimate1
                              from sq.statepopulation
                              where Name in ("NY","FL"));
quit;
































************************************************************;
* SOLUTIONS                                                *;
************************************************************;
/*
proc sql number;
select Name, PopEstimate1
    from sq.statepopulation
    where PopEstimate1 < any (select PopEstimate1
                                  from sq.statepopulation
                                  where Name in ("NY","FL"));
quit;


proc sql number;
select Name, PopEstimate1
    from sq.statepopulation
    where PopEstimate1 < (select max(PopEstimate1)
                              from sq.statepopulation
                              where Name in ("NY","FL"));
quit;
*/