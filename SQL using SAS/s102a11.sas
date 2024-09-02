***********************************************************;
*  Activity 2.11                                          *;
*  1) Examine and run the program. View the log and       *;
*     results.                                            *;
*  2) Note the column labels for the first two columns:   *;
*     Member Name is the DICTIONARY table, and Data Set   *;
*     Label is the description of that table.             *;
*  3) Replace the asterisk in the SELECT clause and       *;
*     select the DISTINCT memname and memlabel columns.   *;
*     Run the query and examine all the available         *;
*     DICTIONARY tables in your SAS session.              *;
*  4) What is the data set label of the members           *;
*     DICTIONARY table?                                   *;
***********************************************************;

proc sql;
describe table dictionary.dictionaries;
select *
	from dictionary.dictionaries;
quit;


































************************************************************;
* SOLUTIONS                                                *;
************************************************************;
/*
proc sql;
describe table dictionary.dictionaries;
select distinct memname, memlabel
	from dictionary.dictionaries;
quit;
*/