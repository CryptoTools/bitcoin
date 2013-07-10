@call set_vars.bat
@bash patch_files.sh

@rem todo: rewrite this with ^ line wrapping
@set PARAMS=BOOST_SUFFIX=%BOOSTSUFFIX%
@set PARAMS=%PARAMS% INCLUDEPATHS="
@set PARAMS=%PARAMS%-I'%CD%'
@set PARAMS=%PARAMS% -I'%CD%/../%EWBLIBS%/%BOOST%'
@set PARAMS=%PARAMS% -I'%CD%/../%EWBLIBS%/%OPENSSL%/include'
@set PARAMS=%PARAMS% -I'%CD%/../%EWBLIBS%/%BERKELEYDB%/build_unix'
@set PARAMS=%PARAMS% -I'%CD%/../%EWBLIBS%/%MINIUPNPC%'
@set PARAMS=%PARAMS%"
@set PARAMS=%PARAMS% LIBPATHS="
@set PARAMS=%PARAMS%-L'%CD%/../src/leveldb'
@set PARAMS=%PARAMS% -L'%CD%/../%EWBLIBS%/%BOOST%/stage/lib'
@set PARAMS=%PARAMS% -L'%CD%/../%EWBLIBS%/%OPENSSL%'
@set PARAMS=%PARAMS% -L'%CD%/../%EWBLIBS%/%BERKELEYDB%/build_unix'
@set PARAMS=%PARAMS% -L'%CD%/../%EWBLIBS%/%MINIUPNPC%'
@set PARAMS=%PARAMS%"

@echo PARAMS: %PARAMS%

@set PARAMS=%PARAMS% USE_UPNP=1
@rem remove "rem " from the next line to deactivate upnp
@rem set params=%params% USE_UPNP=-

@cd ..\src
@mingw32-make -f Makefile.mingw %PARAMS%
@echo.
@echo.
@strip %COINNAME%d.exe
@if errorlevel 1 goto continue
@echo !!!!!!! Bitcoin daemon DONE: Find %COINNAME%d.exe in ./src :)
:continue
@cd ..\easywinbuilder
@if not "%RUNALL%"=="1" pause

:end