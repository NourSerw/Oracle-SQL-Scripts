@echo off
SET @username=hr
SET @password=hr
SET @schema=hr
SET @sid=pdborcl
For /f "tokens=1-2 delims=/:" %%a in ("%TIME%") do (set mytime=%%a%%b)

expdp %@username%/%@password%@%@sid% dumpfile=%@schema%_%date%_%mytime%.dmp directory=test_dump logfile=%@schema%_%date%_%mytime%.log schemas=%@schema%