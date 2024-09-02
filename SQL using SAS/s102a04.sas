***********************************************************;
*  Activity 2.04                                          *;
*  1) Examine the query. Add the title "Customers from    *;
*     Hawaii" and a footnote using today's date. Run the  *;
*     program and examine the new title and footnote in   *;
*     your report.                                        *;
*  2) Apply LABEL="Email Address" to the UserID column    *;
*     and LABEL="Estimated Income" to the Income column.  *;
*  3) Apply FORMAT=DATE9. to the DOB column and           *;
*     FORMAT=DOLLAR16.2 to the Income column. Run the     *;
*     program and examine the report.                     *;
*  4) Change the DOLLAR16.2 format to DOLLAR7.2. Run the  *;
*     program. What happens to the values in the Income   *;
*     column?                                             *;
***********************************************************;

/*Add a title*/
/*Add a footnote*/

title "Customers from Hawaii";
footnote "September 1";
proc sql;
select FirstName, LastName, State, 
       UserID label="Email Address", 
       Income label="Estimated Income" format=dollar16.2, 
       DOB format=date9.
	from sq.customer
	where State = "HI" and 
          BankID is not null
	order by Income desc;
quit;
title;
footnote;


title "Customers from Hawaii";
footnote "September 1";
proc sql;
select FirstName, LastName, State, 
       UserID label="Email Address", 
       Income label="Estimated Income" format=dollar7.2, 
       DOB format=date9.
	  from sq.customer
	  where State = "HI" and 
            BankID is not null
	  order by Income desc;
quit;
title;
footnote;








































************************************************************;
* SOLUTIONS                                                *;
************************************************************;
/*
title "Customers from Hawaii";
footnote "March 6";
proc sql;
select FirstName, LastName, State, 
       UserID label="Email Address", 
       Income label="Estimated Income" format=dollar16.2, 
       DOB format=date9.
	from sq.customer
	where State = "HI" and 
          BankID is not null
	order by Income desc;
quit;
title;
footnote;



title "Customers from Hawaii";
footnote "March 6";
proc sql;
select FirstName, LastName, State, 
       UserID label="Email Address", 
       Income label="Estimated Income" format=dollar7.2, 
       DOB format=date9.
	  from sq.customer
	  where State = "HI" and 
            BankID is not null
	  order by Income desc;
quit;
title;
footnote;
*/