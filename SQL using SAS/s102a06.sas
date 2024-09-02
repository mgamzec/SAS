***********************************************************;
*  Activity 2.06                                          *;
*  1) Examine and run the query. View the results.        *;
*  2) Change the State column in the SELECT clause to the *;
*     Employed column. Run the query. What does this      *;
*     query show?                                         *;
*  3) Add the Married column in the SELECT clause after   *;
*     the Employed column. Run the query. What does this  *;
*     query show?                                         *;
***********************************************************;

proc sql;
select distinct State
    from sq.customer;
quit;












































************************************************************;
* SOLUTIONS                                                *;
************************************************************;
/*
proc sql;
select distinct Employed
    from sq.customer;
quit;

proc sql;
select distinct Employed, Married
    from sq.customer;
quit;
*/