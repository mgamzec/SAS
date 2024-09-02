***********************************************************;
*  Activity 2.03                                          *;
*  1) Complete the ORDER BY clause and sort by            *;
*     CreditScore. Run the query and examine the report.  *;
*     What is the default sort order?                     *;
*  2) Add the keyword DESC after the CreditScore column   *;
*     in the ORDER BY clause. Run the query and examine   *;
*     the report. What does the DESC option do?           *;
*  3) Add a secondary sort column to sort by LastName.    *;
*     Run the query. Who is the first customer on the     *;
*     report?                                             *;
*  4) Remove LastName from the SELECT clause and rerun    *;
*     the query. Are the results still sorted by LastName *;
*     within CreditScore?                                 *;
***********************************************************;

proc sql;
select FirstName, LastName, CreditScore
	from sq.customer
	where CreditScore > 830
	order by CreditScore;
quit;


proc sql;
select FirstName, LastName, CreditScore
    from sq.customer
    where CreditScore > 830
    order by CreditScore desc, LastName;
quit;


proc sql;
select FirstName, CreditScore
	from sq.customer
	where CreditScore > 830
	order by CreditScore desc, LastName;
quit;




















************************************************************;
* SOLUTIONS                                                *;
************************************************************;
/*
proc sql;
select FirstName, LastName, CreditScore
	from sq.customer
	where CreditScore > 830
	order by CreditScore;
quit;


proc sql;
select FirstName, LastName, CreditScore
	from sq.customer
	where CreditScore > 830
	order by CreditScore desc;
quit;


proc sql;
select FirstName, LastName, CreditScore
	from sq.customer
	where CreditScore > 830
	order by CreditScore desc, LastName;
quit;


proc sql;
select FirstName, CreditScore
	from sq.customer
	where CreditScore > 830
	order by CreditScore desc, LastName;
quit;
*/