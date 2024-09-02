***********************************************************;
*  Activity 3.01                                          *;
*  1) Examine and run the two queries to explore the      *;
*     sq.smallcustomer and sq.smalltransaction tables.    *;
*     Confirm that the sq.smallcustomer contains 8 rows   *;
*     and the sq.smalltransaction contains 12 rows.       *;
*  2) In the next section, list the sq.smallcustomer and  *;
*     sq.smalltransaction table in the FROM clause and    *;
*     separate the tables by a comma. Run the query and   *;
*     view the log. What note do you see?                 *;
*  3) View the results. Name two issues with the report.  *;
***********************************************************;

************************;
*EXPLORE THE TABLES    *;
************************;
proc sql number;
title "Table: smallcustomer";
select *
	from sq.smallcustomer;
title "Table: smalltransaction";
select *
	from sq.smalltransaction;
title;
quit;


***********************************;
*CREATE THE DEFAULT JOIN          *;
***********************************;
title "Cartesian Product";
proc sql number;
select *
	from /*Add the sq.smallcustomer and sq.smalltransaction tables*/;
quit;
title;























************************************************************;
* SOLUTIONS                                                *;
************************************************************;
/*
proc sql number;
	select *
	from sq.smallcustomer, sq.smalltransaction;
quit;
*/