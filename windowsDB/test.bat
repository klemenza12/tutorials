@echo off
Set /P _dept=Please enter Department || Set _dept=NothingChosen
If "%_dept%"=="NothingChosen" goto :sub_error
If /i "%_dept%"=="finance" goto sub_finance
If /i "%_dept%"=="hr" goto sub_hr
goto:eof

:sub_finance
echo You chose the finance dept
goto:eof
REM pause

:sub_hr
echo You chose the hr dept
REM pause

:sub_error
echo Nothing was chosen
REM pause