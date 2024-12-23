@echo off
REM 获取当前批处理文件所在的目录
cd /d %~dp0

REM 设置 Qt 工具路径
set QT_PATH=D:\Qt\6.8.1\mingw_64

REM 设置 windeployqt 工具的路径
set WDEPLOYQT_PATH=%QT_PATH%\bin\windeployqt.exe

REM 需要打包的应用程序
set EXE_PATH=Dart.exe

REM 打包并部署应用程序
echo Deploying %EXE_PATH%...
"%WDEPLOYQT_PATH%" "%EXE_PATH%"

REM 提示操作完成
echo Deployment completed！

exit
