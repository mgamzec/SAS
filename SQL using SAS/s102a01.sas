***********************************************************;
*  Activity 2.01                                          *;
*  1) Complete the WHERE clause to filter for customers   *;
*     in the state of VT and run the query.               *;
*  2) Add another expression using the OR operator to     *;
*     select only customers from the state of VT or SC.   *;
*     How many customers are from either VT or SC?        *;
*  3) Switch your current expression to use the IN        *;
*     operator. Add the state of GA. How many customers   *;
*     are from either VT, SC, or GA?                      *;
***********************************************************;

proc sql number;
select FirstName, LastName, State 
   from sq.customer
   where State = "VT";
quit;


proc sql number;
select FirstName, LastName, State 
   from sq.customer
   where State="VT" or 
		   State="SC";
quit;


proc sql number;
select FirstName, LastName, State 
   from sq.customer
   where State in ("VT", "SC", "GA");
quit;































************************************************************;
* SOLUTIONS                                                *;
************************************************************;
/*
proc sql number;
select FirstName, LastName, State 
   from sq.customer
   where State="VT";
quit;


proc sql number;
select FirstName, LastName, State 
   from sq.customer
   where State="VT" or 
		   State="SC";
quit;


proc sql number;
select FirstName, LastName, State 
   from sq.customer
   where State in ("VT", "SC", "GA");
quit;
*/