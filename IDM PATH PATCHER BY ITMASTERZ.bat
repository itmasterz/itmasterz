@Echo Off
Title IDM PATH PATCHER BY ITMASTERZ & Color 1A
cd %systemroot%\system32
call :IsAdmin

Reg.exe add "HKCU\SOFTWARE\DownloadManager\FoldersTree\Downloads" /ve /t REG_SZ /d "" /f
Reg.exe add "HKCU\SOFTWARE\DownloadManager\FoldersTree\Downloads" /v "forSiteOnly" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\DownloadManager\FoldersTree\Downloads" /v "ID" /t REG_DWORD /d "100" /f
Reg.exe add "HKCU\SOFTWARE\DownloadManager\FoldersTree\Downloads" /v "pathW" /t REG_NONE /d "C:\Users\ADMIN\Downloads" /f
Reg.exe add "HKCU\SOFTWARE\DownloadManager\FoldersTree\Downloads" /v "rememberLastPath" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\DownloadManager\FoldersTree\Downloads" /v "sites" /t REG_SZ /d "" /f
Reg.exe add "HKCU\SOFTWARE\DownloadManager\FoldersTree\Downloads" /v "mask" /t REG_SZ /d "zip rar r0* r1* arj gz sit sitx sea ace bz2 7z doc pdf ppt pps docx pptx mp3 wav wma mpa ram ra aac aif m4a tsa exe msi avi mpg mpe mpeg asf wmv mov qt rm mp4 flv m4v webm ogv ogg mkv ts tsv" /f
REG DELETE HKEY_CURRENT_USER\SOFTWARE\DownloadManager\FoldersTree\Compressed /f
REG DELETE HKEY_CURRENT_USER\SOFTWARE\DownloadManager\FoldersTree\Documents /f
REG DELETE HKEY_CURRENT_USER\SOFTWARE\DownloadManager\FoldersTree\Music /f
REG DELETE HKEY_CURRENT_USER\SOFTWARE\DownloadManager\FoldersTree\Programs /f
REG DELETE HKEY_CURRENT_USER\SOFTWARE\DownloadManager\FoldersTree\Video /f
pause

:IsAdmin
Reg.exe query "HKU\S-1-5-19\Environment"
If Not %ERRORLEVEL% EQU 0 (
 Cls & Echo You must have administrator rights to continue ... 
 Pause & Exit
)
Cls
goto:eof

