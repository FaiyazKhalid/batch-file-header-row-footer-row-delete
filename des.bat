@echo off

set droptop=20
for /f %%i in ( ' find /c /v "" ^<10.html ' ) do set /a dropend=%%i-8
for /f "skip=%droptop%tokens=1*delims=][" %%i in ( ' find /n /v ""
^<10.html ' ) do if %%i leq %dropend% >>k.html echo\%%j
for %%i in (droptop dropend) do (set %%i=)