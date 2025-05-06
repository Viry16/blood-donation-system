@echo off
REM Change to src directory
cd src

REM Compile the Java file into the bin directory with MySQL JDBC driver in classpath
javac -d ..\bin -cp "..\libraries\mysql-connector-j.9.3.0.jar" model\databaseconfig.java

REM Run the compiled class from the bin directory with the driver in classpath
java -cp "..\bin;..\libraries\mysql-connector-j-9.3.0.jar" model.databaseconfig

REM Pause so you can see output before the window closes
pause