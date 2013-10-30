@echo off

:--------------------------------------------------------------------
: Variable
:--------------------------------------------------------------------

: cygwin directory
set CYGWIN_DIR=C:\cygwin
: sh exe
set SH_EXE=%CYGWIN_DIR%\bin\sh.exe

:--------------------------------------------------------------------
: Process
:--------------------------------------------------------------------

: Start main process
pushd %~dp0

echo Start

: cygwin
if not exist "%SH_EXE%" (
  echo Setup cygwin
  start http://cygwin.com/setup-x86.exe
  echo Press any key after installed Cygwin manually.
  echo   Select packages 'Shells/zsh', 'Utils/bzip2', 'Web/wget' to install
  pause

  copy mintty.lnk "%CYGWIN_DIR%\"
)

echo Complete

popd
exit /b
: End main process

:--------------------------------------------------------------------
: Function
:--------------------------------------------------------------------
