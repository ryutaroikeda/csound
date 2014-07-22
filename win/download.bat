REM Pull down all dependencies that are on the nuget package manager
REM TODO download nuget.exe "http://nuget.org/nuget.exe" first

mkdir dependencies
cd dependencies

nuget install boost
nuget install curl
REM nuget install dirent
nuget install Eigen
nuget install libintl
nuget install lua
nuget install openssl
nuget install portmidi
nuget install pthreads
nuget install zlib
nuget install libpng
