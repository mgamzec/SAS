***********************************************************;
*  Activity 2.05                                          *;
*  1) Examine and run the query. View the results.        *;
*  2) Add the expression yrdif(dob,'01jan2019'd) in the   *;
*     SELECT clause after UserID to create a new column.  *;
*     Run the query and examine the results. What is the  *;
*     name of the new column?                             *;
*  3) Add as Age after your function. Run the query and   *;
*     examine the results. What changes?                  *;
*  4) Remove the OBS= data set option in the FROM clause  *;
*     and add a WHERE clause to return rows where Age is  *;
*     greater than or equal to 70. Run the query. Did the *;
*     query run successfully?                             *;
***********************************************************;

proc sql;
select FirstName, LastName, UserID
    from sq.customer(obs=100);
quit;

proc sql;
select FirstName, LastName, UserID,
       yrdif(dob,'01jan2019'd)
    from sq.customer(obs=100);
quit;


proc sql;
select FirstName, LastName, UserID,
       yrdif(dob,'01jan2019'd) as Age
    from sq.customer(obs=100);
quit;


proc sql;
select FirstName, LastName, UserID,
       yrdif(dob,'01jan2019'd) as Age
    from sq.customer(obs=100)
    where Age > 70;
quit;








































************************************************************;
* SOLUTIONS                                                *;
************************************************************;
/*
proc sql;
select FirstName, LastName, UserID,
       yrdif(dob,'01jan2019'd)
    from sq.customer(obs=100);
quit;


proc sql;
select FirstName, LastName, UserID,
       yrdif(dob,'01jan2019'd) as Age
    from sq.customer(obs=100);
quit;


proc sql;
select FirstName, LastName, UserID,
       yrdif(dob,'01jan2019'd) as Age
    from sq.customer(obs=100)
    where Age > 70;
quit;
*/