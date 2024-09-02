***********************************************************;
*  Activity 3.08                                          *;
*  1) Run the queries in the Create a Table and Insert    *;
*     Values section. View the newly created table.       *;
*  2) Run the query in the Join Different Column Types    *;
*     section. What syntax error was generated when you   *;
*     joined columns of different types?                  *;
*  3) Leave the program open for the next activity.       *;
***********************************************************;

************************************;
*Create a Table and Insert Values  *;
************************************;
proc sql;
create table customerzip
	(CustomerID num,
     ZipCode char(5),
     Gender char(1),
     Employed char(1));
insert into customerzip
    values(1,"14580","M","Y")
	values(2,"04429","M","Y")
	values(3,"50101","M","Y")
	values(4,"27519","M","Y")
	values(5,"14216","M","Y")
;
quit;


**********************************;
*Join Different Column Types     *;
**********************************;
proc sql;
select c.CustomerID, c.ZipCode, c.Gender, 
       z.Zip, z.City, z.StateCode
    from customerzip as c inner join 
         sashelp.zipcode as z
      on c.ZipCode = z.Zip;
quit;

***********************************************************;
*  Activity 3.09                                          *;
*  1) If you have not run the queries in the Create a     *;
*     Table and Insert Values section, run those now.     *;
*  2) Use the PUT function to convert z.Zip in the ON     *;
*     clause to a character value using the z5 format.    *;
*     Run the query.                                      *;
*  3) What city does the ZipCode value 14216 represent?   *;
***********************************************************;
















************************************************************;
* SOLUTIONS                                                *;
************************************************************;
/*
proc sql;
select c.CustomerID, c.ZipCode, c.Gender, 
       z.Zip, z.City, z.StateCode
    from customerzip as c inner join 
         sashelp.zipcode as z
      on c.ZipCode = put(z.Zip,z5.);
quit;
*/