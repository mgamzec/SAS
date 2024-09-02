***********************************************************;
*  Activity 5.01                                          *;
*  1) Run the first queries to preview the sq.salesemail  *;
*     and sq.salesphone tables. Examine the columns in    *;
*     both tables.                                        *;
*  2) In the Intersect section, examine and run the       *;
*     query. Did the query run successfully? Why not?     *;
*  3) Add the CORR keyword after the INTERSECT set        *;
*     operator. Run the query. Did the query run          *;
*     successfully? Why?                                  *;
***********************************************************;

*********************;
*Preview Tables     *;
*********************;
proc sql inobs=5;
select *
    from sq.salesemail;
select *
    from sq.salesphone;
quit;


*********************;
*Intersect          *;
*********************;
proc sql;
select *
    from sq.salesemail
intersect
select *
    from sq.salesphone;
quit;






















************************************************************;
* SOLUTIONS                                                *;
************************************************************;
/*
proc sql;
select *
    from sq.salesemail
intersect
select *
    from sq.salesphone;
quit;


proc sql;
select *
    from sq.salesemail
intersect corr
select *
    from sq.salesphone;
quit;


*Solve using an INNER JOIN;
proc sql;
select distinct e.CustomerID
    from sq.salesemail as e inner join 
         sq.salesphone as p
      on e.Customerid = p.Customerid;
quit;
*/ 