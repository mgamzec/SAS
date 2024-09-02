***********************************************************;
*  Activity 3.04                                          *;
*  1) Complete the ON clause to join on rows where        *;
*     customer Income is greater than the LowIncome       *;
*     range, and less than or equal to the HighIncome     *;
*     range using the BETWEEN-AND where operator.         *;
*  2) What tax bracket is Olga Comstock in?               *;
*  3) View your log. What note do you see?                *;
***********************************************************;

****************;
*NON-EQUI JOIN *;
****************;
proc sql;
select FirstName, LastName, Income format=dollar16., 
       TaxBracket
	from sq.smallcustomer as c inner join 
         sq.taxbracket as t
    on /*Complete the ON clause*/
	order by TaxBracket desc, Income desc;
quit;



















































************************************************************;
* SOLUTIONS                                                *;
************************************************************;
/*
proc sql;
select FirstName, LastName, 
       Income format=dollar16., TaxBracket
    from sq.smallcustomer as c inner join 
         sq.taxbracket as t
    on c.Income between t.LowIncome and t.HighIncome
    order by TaxBracket desc, Income desc;
quit;
*/