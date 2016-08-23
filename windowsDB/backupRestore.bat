cd C:/Program Files/PostgreSQL/9.3/bin
set /P option=Please enter what to do backup or restore  
IF "%option%"=="backup" goto :sub_backup
IF "%option%"=="restore" goto :sub_restore
goto:eof

:sub_backup
pg_dump.exe --host localhost --port 5432 --username "postgres" --no-password  --format custom --blobs --verbose --file "C:\Users\chernevh\Desktop\testDbBackUp.backup" "testDB"
echo  The backup was made on %DATE% %TIME% > "C:\Users\chernevh\Desktop\DateBackup.txt" 
goto:eof


:sub_restore
pg_restore.exe --host localhost --port 5432 --username "postgres" --dbname "testDB" --no-password  --clean --verbose "C:\Users\chernevh\Desktop\testDbBackUp.backup"
echo The backup was made on %DATE% %TIME% > "C:\Users\chernevh\Desktop\DateRestore.txt" 
goto:eof