***********************************************************;
*  Activity 6.01                                          *;
*  1) Run the program. Examine the log and results.       *;
*     Confirm that the name of the newly created table is *;
*     customerga and contains 957 rows.                   *;
*  2) Replace the values GA and 650 in the %LET           *;
*     statements with NC and 700. Run the program.        *;
*     Examine the log and results. What is the name of    *;
*     the newly created table? How many rows?             *;
*  3) Change the double quotation marks in the WHERE      *;
*     clause expression to single quotation marks. Run    *;
*     the query. How many rows are in the new table?      *;
***********************************************************;

%let State=GA;
%let CreditMin=650;
proc sql;
create table Customer&State as
select CustomerID, Employed, Race, 
       Married, State, CreditScore
    from sq.customer
    where State="&State" and
          CreditScore > &CreditMin;
quit; 



























************************************************************;
* SOLUTIONS                                                *;
************************************************************;
/*
%let State=NC;
%let CreditMin=700;
proc sql;
create table Customer&State as
select CustomerID, Employed, Race, 
       Married, State, CreditScore
    from sq.customer
    where State="&State" and
          CreditScore > &CreditMin;
quit; 


%let State=NC;
%let CreditMin=700;
proc sql;
create table Customer&State as
select CustomerID, Employed, Race, 
       Married, State, CreditScore
    from sq.customer
    where State='&State' and
          CreditScore > &CreditMin;
quit; 
*/