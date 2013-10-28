:: Csound required environmental variables
set FLEX = E:\Programs\Git\bin
set BISON = E:\Programs\Git\bin

set LIBSNDFILE = G:\Programming\libraries\libsndfile32
set LIBSNDFILE_ALL = %LIBSNDFILE%\lib;%LIBSNDFILE%\include;%LIBSNDFILE%\bin

set PORTAUDIO = G:\Programming\libraries\portaudio\include

set PTHREADS = G:\Programming\libraries\pthreads\Pre-built.2
set PTHREADS_ALL = %PTHREADS%\include;%PTHREADS%\lib\x86;%PTHREADS%\dll\x86

set WINMMLIB = E:\Programming\Microsoft SDKs\Windows\v7.1\Lib

set FLTK = G:\Programming\libraries\fltk-1.3.2_install
set FLTK_ALL = %FLTK%;%FLTK%\bin

:: Create the CS_PATH from all library directories
set CS_PATH = %FLEX%;%BISON%;%LIBSNDFILE_ALL%;%PORTAUDIO%;%PTHREADS_ALL%;%WINMMLIB%;%FLTK_ALL%;

:: Set the 'CS_PATH' environmental path
setx CS_PATH %CS_PATH%

:: Add the new 'CS_PATH' to the main 'PATH' 
setx PATH = %PATH%;%CS_PATH%