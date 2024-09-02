***********************************************************;
*  Activity 3.02                                          *;
*  1) Examine and run the two queries to explore the      *;
*     sq.statepopulation and sq.statecode tables. What    *;
*     columns can you use to join the tables?             *;
*  2) Specify the tables in the FROM clause and perform   *;
*     an inner join. Add the alias p for the              *;
*     sq.statepopulation table, and the alias s for the   *;
*     sq.statecode table.                                 *;
*  3) Complete the ON expression to match rows where      *;
*     p.Name = s.StateCode. Highlight and run the query.  *;
*     How many rows are in the new report?                *;
***********************************************************;

************************;
*EXPLORE THE TABLES    *;
************************;
proc sql inobs=10;
title "Table: STATEPOPULATION";;
select Name, PopEstimate1, PopEstimate1, PopEstimate1
	from sq.statepopulation;
title "Table: STATECODE";
select *
	from sq.statecode;
quit;


******************************;
*COMPLETE THE INNER JOIN     *;
******************************;
proc sql number;
select Name, StateName, PopEstimate1, PopEstimate2, PopEstimate3
	from /*Complete the JOIN: table1 as alias INNER JOIN table2 as alias*/
	on /*Join criteria: alias1.column1 = alias2.column2*/
    order by StateName;
quit;



































************************************************************;
* SOLUTIONS                                                *;
************************************************************;
/*
proc sql number;
select Name, StateName, PopEstimate1, PopEstimate2, PopEstimate3
	from sq.statepopulation as p inner join 
         sq.statecode as s
	on p.Name = s.StateCode
    order by StateName;
quit;
*/