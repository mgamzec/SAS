***********************************************************;
*  Activity 3.03                                          *;
*  1) Complete the first query by adding the BANKID       *;
*     column name in the WHERE clause. How many tables    *;
*     contain the BankID column?                          *;
*  2) Replace BANKID with MERCHANTID. How many tables     *;
*     contain the MerchantID column?                      *;
***********************************************************;

proc sql;
select memname, name
	from dictionary.columns
	where libname="SQ" and 
          upcase(name)=/*Column name*/;
quit;
































************************************************************;
* SOLUTIONS                                                *;
************************************************************;
/*
proc sql;
select memname, name
    from dictionary.columns
    where libname="SQ" and 
          upcase(name)="BANKID";
quit;


proc sql;
select memname, name
    from dictionary.columns
    where libname="SQ" and 
          upcase(name)="MERCHANTID";
quit;
*/