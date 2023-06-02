cd %SRC_DIR%\build
cmake --install .
if errorlevel 1 exit 1

if [%PKG_NAME%] == [libthrift] (
  del %PREFIX%\Library\bin\thrift.exe
  if errorlevel 1 exit 1
  move %PREFIX%\Library\bin\thriftmd.lib %PREFIX%\Library\lib\thriftmd.lib
  if errorlevel 1 exit 1
) else (
  del %PREFIX%\Library\bin\thriftmd.lib
  if errorlevel 1 exit 1
)
