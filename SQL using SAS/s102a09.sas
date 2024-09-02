***********************************************************;
*  Activity 2.09                                          *;
*  1) Examine and run the query in the Create a Table     *;
*     from a Query section. View the results.             *;
*  2) Add the CREATE TABLE statement and create a table   *;
*     named Top5States. Run the query and confirm that    *;
*     the table was created successfully.                 *;
*  3) Run the code below your SQL query. What did the     *;
*     code produce?                                       *;
***********************************************************;

********************************;
*Create a Table from a Query *;
********************************;
proc sql outobs=5;
/*Add a CREATE TABLE Statement*/
select Name label="State Name", 
       PopEstimate1 format=comma14. label="Population Estimate"
    from sq.statepopulation
	order by PopEstimate1 desc;
quit;


*********************************************************;
*            USE THE TABLE IN A VISUALIZATION           *;
*				   DO NOT EDIT CODE BELOW               *;
*********************************************************;
title "Next Year's Top 5 State Population Estimate";
footnote "Created on %left(%qsysfunc(today(),weekdate.))";/*<-----Automatically adds the current date as the footnote*/
proc sgplot data=Top5States; /*<------------Top5States table from above*/
   vbar Name / response=PopEstimate1 /*<----Specifies the numeric response value*/
			   categoryorder=respdesc /*<---Specify the order in which the columns are arranged*/
               dataskin=matte /*<-----------Specifies a special effect to be used on the bars*/
			   fillattrs=(color=bigb);/*<---Specifies the fill color*/
run;
title;
footnote;























************************************************************;
* SOLUTIONS                                                *;
************************************************************;
/*
proc sql outobs=5;
create table Top5States as
select Name label="State Name", 
       PopEstimate1 format=comma14. label="Population Estimate"
    from sq.statepopulation
    order by PopEstimate1 desc;
quit;
*/

*title "Next Year's Top 5 State Population Estimate";
*footnote "Created on %left(%qsysfunc(today(),weekdate.))";/*<-----Automatically adds the current date as the footnote*/
*proc sgplot data=Top5States; /*<------------Top5States table from above*/
   *vbar Name / response=PopEstimate1 /*<----Specifies the numeric response value*/
			   categoryorder=respdesc /*<---Specify the order in which the columns are arranged*/
               dataskin=matte /*<-----------Specifies a special effect to be used on the bars*/
			   fillattrs=(color=bigb);/*<---Specifies the fill color*/
*run;
*title;
*footnote;