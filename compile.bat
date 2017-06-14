@ECHO OFF

set basename=src\Player

cls

echo [1;31;40m
echo Executing Turbo Assembler:
echo [1;37;40m

TASM.EXE /zi %basename%.ASM

if ERRORLEVEL 1 GOTO END

echo [1;31;40m
echo Executing Turbo Link:
echo [1;37;40m

TLINK.EXE /v Player.OBJ

if ERRORLEVEL 1 GOTO END
GOTO END

echo [1;31;40m
echo Executing Turbo Debugger:
echo [1;37;40m
@PAUSE

TD.EXE Player.EXE

:END
echo [1;31;40m
echo Exiting...
echo [1;37;40m
