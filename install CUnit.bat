@echo off

REM Init var
set here=%cd%
(where gcc || where g++) > dir.txt
set /p compilerDir=<dir.txt

REM Needed only dir, not file (substring)
set compilerDir=%compilerDir:g++.exe=%
set compilerDir=%compilerDir:gcc.exe=%
set compilerDir=%compilerDir:\bin=%


copy /-Y ".\bin\libcunit.dll" "%compilerDir%\bin"
mkdir "%compilerDir%\include\CUnit"
copy "include\CUnit\*" "%compilerDir%\include\CUnit"
copy ".\lib\*" "%compilerDir%\lib"



REM pushd %here%


erase dir.txt
exit