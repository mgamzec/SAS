***********************************************************;
*  Activity 3.05                                          *;
*  1) Run the query to create a left join between the     *;
*     sq.smallcustomer and sq.smalltransaction tables.    *;
*     Notice the difference within the AccountID columns  *;
*     in rows 8 and 9.                                    *;
*  2) Remove the column t.AccountID in the SELECT clause. *;
*     Run the query and examine the results. How many     *;
*     missing AccountID values are in the results?        *;
*  3) Replace c.AccountID with t.AccountID. Replace the c *;
*     in the column label with a t. How many missing      *;
*     AccountID values are in the results?                *;
***********************************************************;

proc sql number;
	select FirstName, LastName, Income,  
           c.AccountID "c.AccountID", t.AccountID "t.AccountID", 
           DateTime, MerchantID, Amount 
	from sq.smallcustomer as c left join 
         sq.smalltransaction as t
	on c.AccountID = t.AccountID;
quit;






































************************************************************;
* SOLUTIONS                                                *;
************************************************************;
/*
proc sql number;
	select FirstName, LastName, Income,  
           c.AccountID "c.AccountID",
           DateTime, MerchantID, Amount 
	from sq.smallcustomer as c left join 
         sq.smalltransaction as t
	on c.AccountID = t.AccountID;
quit;


proc sql number;
	select FirstName, LastName, Income,  
           t.AccountID "t.AccountID",
           DateTime, MerchantID, Amount 
	from sq.smallcustomer as c left join 
         sq.smalltransaction as t
	on c.AccountID = t.AccountID;
quit;
*/