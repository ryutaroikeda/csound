:: Csound required environmental variables. Must be run with Admin privileges
:: Please enter the correct locations for each dependency for this machine
:: Wrap all paths that contain spaces with quotes ""
:: Execute the script file via the CMD window
:: Manually add %CS_PATH% and %CS_INSTALL% to main %PATH% variable, 
:: this can't be automated easily at the minute

@ECHO OFF

:: Utilities
set FLEX=E:\Programs\Git\bin
set BISON=E:\Programs\Git\bin

set CUNIT_H=G:\Programming\CUnit-2.1-2\CUnit\Headers
set CUNIT_LIB="G:\Programming\CUnit-2.1-2\VC9\Release - DLL"
set CUNIT_ALL=%CUNIT_H%;%CUNIT_LIB%

:: Library depenencies
set LIBSNDFILE=G:\Programming\libraries\libsndfile32
set LIBSNDFILE_ALL=%LIBSNDFILE%\lib;%LIBSNDFILE%\include;%LIBSNDFILE%\bin

set PORTAUDIO_H=G:\Programming\libraries\portaudio\include
set PORTAUDIO_LIB=E:\Programming\portaudio\bin\Win32\Release
set PORTAUDIO_ALL=%PORTAUDIO_H%;%PORTAUDIO_LIB%

set PORTMIDI_DIR=G:\Programming\libraries\portmidi\Release
set PORTMIDI_H=G:\Programming\libraries\portmidi\pm_common
set PORTMIDI_ALL=%PORTMIDI_DIR%;%PORTMIDI_H%

set PORTTIME_H=G:\Programming\libraries\portmidi\porttime
set PORTTIME_LIB=G:\Programming\libraries\portmidi\porttime\Release
set PORTTIME_ALL=%PORTTIME_H%;%PORTTIME_LIB%

set PTHREADS=G:\Programming\libraries\pthreads\Pre-built.2
set PTHREADS_ALL=%PTHREADS%\include;%PTHREADS%\lib\x86;%PTHREADS%\dll\x86

set WINMMLIB="E:\Programming\Microsoft SDKs\Windows\v7.1\Lib"

set FLTK=G:\Programming\libraries\fltk-1.3.2_install
set FLTK_ALL=%FLTK%;%FLTK%\bin

:: Create the CS_PATH from all library directories
set CS_PATH=%FLEX%;%BISON%;%CUNIT_ALL%;%LIBSNDFILE_ALL%;%PORTAUDIO_ALL%;%PORTMIDI_ALL%;%PORTTIME_ALL%;%PTHREADS_ALL%;%WINMMLIB%;%FLTK_ALL%;

:: Set Csound install directory
set CS_INSTALL="G:\Programs\CsoundBuild"
set CS_INSTALL_ALL=%CS_INSTALL%\bin;%CS_INSTALL%\include;%CS_INSTALL%\lib

@ECHO ON

:: Set the 'CS_PATH' environmental variable
setx /m CS_PATH %CS_PATH%

:: Set the 'CS_INSTALL' env. variable
setx /m CS_INSTALL %CS_INSTALL_ALL%

:: Add the new 'CS_PATH' to the main 'PATH' 
:: FIXME, expands variables which makes it too long and breaks the path
::setx /m PATH "%PATH%";%%CS_PATH%%";%%CS_INSTALL%%
