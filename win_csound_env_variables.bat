:: Csound required environmental variables
:: Please enter the correct locations for each dependency for this machine
:: Execute the script file via the CMD window after

::@ECHO OFF

set FLEX=E:\Programs\Git\bin
set BISON=E:\Programs\Git\bin

set LIBSNDFILE=G:\Programming\libraries\libsndfile32
set LIBSNDFILE_ALL=%LIBSNDFILE%\lib;%LIBSNDFILE%\include;%LIBSNDFILE%\bin

set PORTAUDIO_H=G:\Programming\libraries\portaudio\include
set PORTAUDIO_LIB=E:\Programming\portaudio\bin\Win32\Release
set PORTAUDIO_ALL=%PORTAUDIO_H%;%PORTAUDIO_LIB%

set PORTMIDI_DIR=G:\Programming\libraries\portmidi\Release
set PORTMIDI_H=G:\Programming\libraries\portmidi\pm_common
set PORTMIDI_ALL=%PORTMIDI_DIR%;%PORTMIDI_H%

set PTHREADS=G:\Programming\libraries\pthreads\Pre-built.2
set PTHREADS_ALL=%PTHREADS%\include;%PTHREADS%\lib\x86;%PTHREADS%\dll\x86

set WINMMLIB="E:\Programming\Microsoft SDKs\Windows\v7.1\Lib"

set FLTK=G:\Programming\libraries\fltk-1.3.2_install
set FLTK_ALL=%FLTK%;%FLTK%\bin

:: Create the CS_PATH from all library directories
set CS_PATH=%FLEX%;%BISON%;%LIBSNDFILE_ALL%;%PORTAUDIO_ALL%;%PORTMIDI%;%PTHREADS_ALL%;%WINMMLIB%;%FLTK_ALL%;

:: Set the 'CS_PATH' environmental path
setx CS_PATH %CS_PATH%

:: Set Csound install directory
set CS_INSTALL "G:\Programs\CsoundBuild"

:: Add the new 'CS_PATH' to the main 'PATH' 
::setx /m PATH "%PATH%";%%CS_PATH%%";%%CS_INSTALL%%

echo "Updated environmental variables for CSound."
