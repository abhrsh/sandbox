@echo off

:--------------------------------------------------------------------
: Variable
:--------------------------------------------------------------------

: sh
set SH_EXE=C:\cygwin\bin\sh.exe

:--------------------------------------------------------------------
: Process
:--------------------------------------------------------------------

: Start main process
pushd %~dp0

echo "Start."

: cygwin
if not exist "%SH_EXE%" (
  echo "Setup cygwin."
  start http://cygwin.com/setup-x86.exe
  echo "Press any key after installed Cygwin manually."
  echo "Select packages 'bzip2', 'wget', 'curl' for install"
  pause
)

echo "Complete."

popd
exit /b
: End main process

:--------------------------------------------------------------------
: Function
:--------------------------------------------------------------------
