***********************************************************;
*  Activity 2.10                                          *;
*  1) Examine the CREATE TABLE statement and run the      *;
*     query only. Confirm an empty table was created.     *;
*  2) In the Inserting Rows with a Query section, enter   *;
*     the correct column names to complete the INSERT     *;
*     INTO statement. Run the query. How many rows were   *;
*     inserted into the table highcredit?                 *;
*  3) In the Inserting Rows with the SET Clause section,  *;
*     complete the INSERT INTO statement with the SET     *;
*     clause and insert yourself as a customer into the   *;
*     highcredit table. Run the query. What does the note *;
*     in the log say?                                     *;
*  4) Complete the code to drop the highcredit table.     *;
***********************************************************;

********************************************;
*Creating Tables like an Existing Table    *;
********************************************;
proc sql;
create table work.highcredit       
     like sq.customer(keep=FirstName LastName 
                           UserID CreditScore);
quit;


********************************************;
*Inserting Rows with a Query               *;
********************************************;
proc sql;
insert into work.highcredit(/*Add columns*/)
select FirstName, LastName,  
       UserID, CreditScore
     from sq.customer
     where CreditScore > 700;
quit;


********************************************;
*Inserting Rows with the SET Clause        *;
********************************************;
proc sql;
insert into highcredit
    set FirstName="",  /*<-----Add your first name*/
	    LastName="",   /*<-----Add your last name*/
		UserID="",    /*<-----Add your first initial followed by your last name*/
		CreditScore=; /*<-----Add any number from 701 - 850*/
quit;


********************************************;
*DROP the highcredit Table                 *;
********************************************;
proc sql;

quit;










































************************************************************;
* SOLUTIONS                                                *;
************************************************************;
/*
proc sql;
create table work.highcredit       
     like sq.customer(keep=FirstName LastName 
                           UserID CreditScore);
quit;


proc sql;
insert into work.highcredit(FirstName,LastName,UserID,CreditScore)
    select FirstName, LastName,  
           UserID, CreditScore
        from sq.customer
        where CreditScore > 700;
quit;


proc sql;
insert into highcredit
    set FirstName="Panagiotis", 
	    LastName="Styliadis",  
		UserID="pstyliadis",   
		CreditScore=750;
quit;


proc sql;
drop table highcredit;
quit;
*/