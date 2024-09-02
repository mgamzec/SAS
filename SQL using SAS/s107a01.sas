***********************************************************;
*  Activity 7.01                                          *;
*  1) Examine the native DBMS query. Run the entire       *;
*     query. Did it produce an error?                     *;
*  2) In the WHERE clause, replace IS MISSING with IS     *;
*     NULL. Run the entire query. Did it run              *;
*     successfully?                                       *;
***********************************************************;

title "Top 10 Customers in North Carolina";
proc sql;
connect to pcfiles(path="&path\database\SQL_DB.accdb"  
                   dbpassword=sastest);
select UserID, Income format=dollar16., State 
    from connection to pcfiles
      (select top 10, UserID, Income, State
           from customer
           where BankID is missing
           order by Income desc);
disconnect from pcfiles;
quit;
title;




































************************************************************;
* SOLUTIONS                                                *;
************************************************************;
/*
title "Top 10 Customers in North Carolina";
proc sql;
connect to pcfiles(path="&path\database\SQL_DB.accdb"  
                   dbpassword=sastest);
select UserID, Income format=dollar16., State 
    from connection to pcfiles
      (select top 10, UserID, Income, State
           from customer
		     where BankID is null
           order by Income desc);
disconnect from pcfiles;
quit;
title;
*/