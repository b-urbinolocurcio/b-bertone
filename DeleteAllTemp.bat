RMDIR /S /Q GenDoc

setlocal enabledelayedexpansion

REM Cicla attraverso tutte le cartelle di primo livello
for /d %%D in (*) do (
    if exist "%%D\DeleteTemp.bat" (
        echo Trovato DeleteTemp.bat in %%D. Esecuzione...
	cd "%%D"
        call "DeleteTemp.bat"
	cd..
    ) else (
        echo Non trovato DeleteTemp.bat in %%D.
    )
)

echo Operazione completata.
endlocal

rem **************************************************************************
rem **************************************************************************
rem **************************************************************************
rem **************************************************************************

@REM if /I EXIST esp-prj (
@REM cd esp-prj
@REM call DeleteTemp.bat
@REM cd..
@REM )

@REM if /I EXIST Utility (
@REM cd Utility
@REM call DeleteTemp.bat
@REM cd..
@REM )

