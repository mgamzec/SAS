***********************************************************;
*  Activity 2.02                                          *;
*  1) Examine the query. Add a WHERE clause to find all   *;
*     customers with a CreditScore value that is less     *;
*     than 500 and run the query. What do you notice      *;
*     about the values in the CreditScore column? How     *;
*     many rows are in your report?                       *;
*  2) Include the AND operator in the WHERE clause to     *;
*     find all rows that are less than 500 and not null.  *;
*     Use a method of your choice. How many rows are in   *;
*     your final report?                                  *;
***********************************************************;

proc sql number;
select FirstName, LastName, UserID, CreditScore
	from sq.customer
	where CreditScore < 500;
quit;



proc sql number;
select FirstName, LastName, UserID, CreditScore
	from sq.customer
	where CreditScore < 500 and 
          CreditScore is not null;






































************************************************************;
* SOLUTIONS                                                *;
************************************************************;
/*
proc sql number;
select FirstName, LastName, UserID, CreditScore
	from sq.customer
	where CreditScore < 500;
quit;


proc sql number;
select FirstName, LastName, UserID, CreditScore
	from sq.customer
	where CreditScore < 500 and 
          CreditScore is not null;
quit;
*/
*where CreditScore < 500 and CreditScore <> .;
*where CreditScore < 500 and CreditScore ne .;          
*where creditscore < 500 and creditscore is not missing;

