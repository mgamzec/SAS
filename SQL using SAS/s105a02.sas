***********************************************************;
*  Activity 5.02                                          *;
*  1) Run the first queries to preview the sq.saleslist   *;
*     and sq.salesphone tables. Examine the columns in    *;
*     both tables.                                        *;
*  2) Complete the query to find all customers from the   *;
*     sq.saleslist table who have not responded to our    *;
*     sales call in sq.salesphone.                        *;
*  3) How many customers have not responded to our phone  *;
*     call?                                               *;
***********************************************************;

*********************;
*Preview Tables     *;
*********************;
proc sql inobs=5;
select *
    from sq.saleslist;
select *
    from sq.salesphone;
quit;


*********************;
*Except             *;
*********************;
proc sql;
/*Complete the query*/

quit;





















************************************************************;
* SOLUTIONS                                                *;
************************************************************;
/*
proc sql;
select *
    from sq.saleslist
except corr
select *
    from sq.salesphone;
quit;


proc sql;
select CustomerID
    from sq.saleslist
except 
select CustomerID
    from sq.salesphone;
quit;


*Solve Using a Subquery;
proc sql;
select distinct CustomerID
    from sq.saleslist
	where CustomerID not in(select CustomerID
	                            from sq.salesphone);
quit;
*/