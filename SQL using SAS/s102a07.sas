***********************************************************;
*  Activity 2.07                                          *;
*  1) Examine and run the query. View the results. Why is *;
*     the value of MaritalStatus different from the value *;
*     of TotalRows?                                       *;
*  2) Inside the COUNT function, add the DISTINCT keyword *;
*     in front of the Married column and run the query.   *;
*     What does the new report show?                      *;
***********************************************************;

proc sql;
select count(*) as TotalRows format=comma10.,
       count(Married) as MaritalStatus format=comma10.
	from sq.customer;
quit;
















































************************************************************;
* SOLUTIONS                                                *;
************************************************************;
/*
proc sql;
select count(*) as TotalRows format=comma10.,
       count(distinct Married) as MaritalStatus format=comma10.
	from sq.customer;
quit;
*/

