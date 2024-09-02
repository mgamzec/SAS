***********************************************************;
*  Activity 4.04                                          *;
*  1) Create a view named VWtotalcustomer from the query. *;
*     Run the query and examine the log.                  *;
*  2) Run the code in the section Use the View in the     *;
*     PROCS Below. Which state has the highest number of  *;
*     customers?                                          *;
***********************************************************;

proc sql;
/*Create a View*/
select State,count(*) as TotalCustomer
    from sq.customer
    group by State;
quit;


*********************************************************;
*            USE THE VIEW IN THE PROCS BELOW            *;
*				   DO NOT EDIT CODE BELOW               *;
*********************************************************;
title "Total Customers by State";
proc sql;
select *
    from VWtotalcustomer
	order by TotalCustomer desc;
quit;


proc sgplot data=VWtotalcustomer;
	hbar State / response=TotalCustomer
                 dataskin=crisp
                 categoryorder=respdesc;
    xaxis label="Total Customer Count";
quit;
title;











************************************************************;
* SOLUTIONS                                                *;
************************************************************;
/*
proc sql;
create view VWtotalcustomer as
select State,count(*) as TotalCustomer
    from sq.customer
    group by State;
quit;


title "Total Customers by States";
proc sql;
select *
    from VWtotalcustomer
	order by TotalCustomer desc;
quit;


proc sgplot data=VWtotalcustomer;
	hbar State / response=TotalCustomer
                 dataskin=crisp
                 categoryorder=respdesc;
    xaxis label="Total Customer Count";
quit;
title;
*/