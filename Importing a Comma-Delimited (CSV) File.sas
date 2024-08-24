***********************************************************;
*  Importing a Comma-Delimited (CSV) File                 *;
***********************************************************;
*  Syntax and Example                                     *;
*                                                         *;
*    PROC IMPORT DATAFILE="path/filename.csv" DBMS=CSV    *;
*  				  OUT=output-table <REPLACE>;             *;
*        <GUESSINGROWS=n|MAX>;                            *;
*    RUN;                                                 *;
***********************************************************;

proc import datafile="/home/u57976064/EPG1V2/data/class_birthdate.csv" 
			dbms=csv out=work.class_birthdate_import
			replace;
run;

***********************************************************;
*  Demo                                                   *;
*  1) Complete the PROC IMPORT step to read               *;
*     STORM_DAMAGE.CSV and create a temporary SAS table   *;
*     named STORM_DAMAGE_IMPORT. Replace the table if it  *;
*     exists.                                             *;
*  2) Complete the PROC CONTENTS step to examine the      *;
*     properties of STORM_DAMAGE_IMPORT.                  *;
*  3) Highlight the demo program and submit the selected  *;
*     code.                                               *;
***********************************************************;

*Complete the PROC IMPORT step;
proc import datafile="/home/u57976064/EPG1V2/data/storm_damage.csv" dbms=csv
			out= storm_damage_import;
run;

*Complete the PROC CONTENTS step;
proc contents data= storm_damage_import;
run;

proc print data= storm_damage_import; run;
