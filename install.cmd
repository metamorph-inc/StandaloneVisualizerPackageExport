SETLOCAL
FOR /F "skip=2 tokens=2,*" %%A IN ('%SystemRoot%\SysWoW64\REG.exe query "HKLM\software\META" /v "META_PATH"') DO SET META_PATH=%%B

reg add HKCU\SOFTWARE\META\PETBrowser\PETTools\ExportVisualizerStandalone /f /ve /d "Export Visualizer Package (Standalone)" /reg:32
reg add HKCU\SOFTWARE\META\PETBrowser\PETTools\ExportVisualizerStandalone /f /v "ActionName" /d "Export Visualizer Package (Standalone)" /reg:32
reg add HKCU\SOFTWARE\META\PETBrowser\PETTools\ExportVisualizerStandalone /f /v "ExecutableFilePath" /d "%META_PATH%\bin\Python27\Scripts\python.exe" /reg:32
reg add HKCU\SOFTWARE\META\PETBrowser\PETTools\ExportVisualizerStandalone /f /v "ProcessArguments" /d "\"%CD%\PetBrowserExportVisualizerPackage.py\" \"%%1\" \"%%2\" \"%%4\"" /reg:32
reg add HKCU\SOFTWARE\META\PETBrowser\PETTools\ExportVisualizerStandalone /f /v "ShowConsoleWindow" /d "0" /t REG_DWORD /reg:32
reg add HKCU\SOFTWARE\META\PETBrowser\PETTools\ExportVisualizerStandalone /f /v "WorkingDirectory" /d "%%2" /reg:32
