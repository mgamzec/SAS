***********************************************************;
*  Activity 3.07                                          *;
*  1) Examine and run the query. Did you receive a syntax *;
*     error?                                              *;
*  2) In the ON clause, use the SUBSTR function on        *;
*     t.StateID to extract the first two characters. Run  *;
*     the query. Which StateName is Caberto, Glen Daniel  *;
*     from?                                               *;
***********************************************************;

proc sql inobs=100 number;
select StateID, CustomerName, StateName
    from sq.transactionfull as t inner join 
         sq.statecode as s
      on t.StateID = s.StateCode;
quit;































************************************************************;
* SOLUTIONS                                                *;
************************************************************;
/*
proc sql inobs=100 number;
select StateID, CustomerName, StateName
from sq.transactionfull as t inner join 
     sq.statecode as s
   on substr(t.StateID,1,2) = s.StateCode;
quit;
*/