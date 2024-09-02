***********************************************************;
*  Activity 4.02                                          *;
*  1) Examine and run the first query. View the results.  *;
*  2) Modify the second query. Copy the value returned by *;
*     the first query into the subquery against the       *;
*     HAVING clause to return divisions with an average   *;
*     PopEstimate1 value greater than the total average   *;
*     of PopEstimate1.                                    *;
*  3) Remove the static value and add the subquery in the *;
*     HAVING clause.                                      *;
*  4) How many divisions have a higher average            *;
*     PopEstimate1 than the average PopEstimate1 of all   *;
*     the states?                                         *;
***********************************************************;

proc sql;
select avg(PopEstimate1)
	from sq.statepopulation;
quit;


proc sql;
select Division, avg(PopEstimate1) as avgDivisionPop
	from sq.statepopulation
	group by Division
	having avgDivisionPop > /*Complete the HAVING clause*/;
quit;






























************************************************************;
* SOLUTIONS                                                *;
************************************************************;
/*
proc sql;
select Division, avg(PopEstimate1) as avgDivisionPop
	from sq.statepopulation
	group by Division
	having avgDivisionPop > 6278420;
quit;


proc sql;
select Division, avg(PopEstimate1) as avgDivisionPop
	from sq.statepopulation
	group by Division
	having avgDivisionPop > (select avg(PopEstimate1)
		                         from sq.statepopulation);
quit;
*/