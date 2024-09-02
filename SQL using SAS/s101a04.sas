***********************************************************;
*  Activity 1.04                                          *;
*  1) Remove the asterisk and select only the FirstName,  *;
*     LastName, and State columns. Run the query. View    *;
*     the log and results.                                *;
*  2) Remove the OBS=10 data set option and add the       *;
*     INOBS=10 PROC SQL option after the PROC SQL         *;
*     keywords and before the semicolon. Run the query.   *;
*     Are the results the same using the INOBS=10 option? *;
*     What about the log?                                 *;
*  3) After the INOBS= option, add the NUMBER option. Run *;
*     the query. Which column was added to the results?   *;
***********************************************************;

proc sql;
select *
	from sq.customer(obs=10);
quit;




























************************************************************;
* SOLUTIONS                                                *;
************************************************************;
/*
proc sql;
select FirstName, LastName, State
	from sq.customer(obs=10);
quit;


proc sql inobs=10;
select FirstName, LastName, State
	from sq.customer;
quit;


proc sql inobs=10 number;
select FirstName, LastName, State
	from sq.customer;
quit;
*/