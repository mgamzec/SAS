***********************************************************;
*  Activity 4.01                                          *;
*  1) Examine and run the first query. Confirm that the   *;
*     results contain one row and two columns.            *;
*  2) Add the first query as a subquery in the second     *;
*     query to find all states with PopEstimate1 higher   *;
*     than the average estimated state population.        *;
*  3) Run the query. What is the syntax error in the log? *;
***********************************************************;
 
proc sql;
select avg(PopEstimate1), "Average Estimated Population"
	from sq.statepopulation;
quit;



proc sql;
select Name, PopEstimate1
	from sq.statepopulation
	where PopEstimate1 > (/*Add the subquery here*/);
quit;



































************************************************************;
* SOLUTIONS                                                *;
************************************************************;
/*
proc sql;
select Name, PopEstimate1
	from sq.statepopulation
	where PopEstimate1 > (select avg(PopEstimate1), "Average Estimated Population"
						      from sq.statepopulation);
quit;
*/