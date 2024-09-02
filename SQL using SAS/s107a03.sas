***********************************************************;
*  Activity 7.03                                          *;
*  1) Examine and run the query. Did it produce an error? *;
*  2) In the WHERE clause, replace the double quotation   *;
*     marks around NC with single quotation marks. Run    *;
*     the query. Did it run successfully?                 *;
***********************************************************;

proc fedsql;
select UserID, Income, State
	from sq.customer
	where State="NC"
	order by Income desc
	limit 10;
quit;





































************************************************************;
* SOLUTIONS                                                *;
************************************************************;
/*
proc fedsql;
select UserID, Income, State
	from sq.customer
	where state='NC'
	order by Income desc
	limit 10;
quit;
*/