dir .\vpk\input /a:d /b > list.txt
set /p id=< .\list.txt
set /p sfo=< .\IDer\txt\id.txt
del ".\vpk\output\*.vpk"
copy ".\vpk\input\%id%\sce_sys\livearea\contents\template.xml" "."
del ".\vpk\input\%id%\sce_sys\livearea\contents\*.xml"
@echo off
IF EXIST .\vpk\input\%id%\sce_sys\livearea\contents\bg.png (
    ren bg0.png bg.png
    copy "bg.png" ".\vpk\input\%id%\sce_sys\livearea\contents\"
    cd .\1batch
    start template-bg-OUT.bat
    cd ..
  ) ELSE (
    GOTO NEXT1
  )
:NEXT1
IF EXIST .\vpk\input\%id%\sce_sys\livearea\contents\bg0.png (
    ren bg.png bg0.png
    copy "bg0.png" ".\vpk\input\%id%\sce_sys\livearea\contents\"
    cd .\1batch
    start template-bg0-OUT.bat
    cd ..
  ) ELSE (
    GOTO NEXT2
  )
:NEXT2
IF EXIST .\vpk\input\%id%\sce_sys\livearea\contents\default_gate.png (
    del .\vpk\input\%id%\sce_sys\livearea\contents\default_gate.png
    cd .\1batch
    start template-gate-OUT.bat
    cd ..
  ) ELSE (
    GOTO NEXT3
  )
:NEXT3
IF EXIST .\param.sfo (
    copy "param.sfo" ".\vpk\input\%id%\sce_sys\"
  ) ELSE (
    GOTO NEXT4
  )
:NEXT4
copy "bg.png" ".\vpk\input\%id%\sce_sys\livearea\contents\"
copy "bg0.png" ".\vpk\input\%id%\sce_sys\livearea\contents\"
copy "startup.png" ".\vpk\input\%id%\sce_sys\livearea\contents\"
copy "icon0.png" ".\vpk\input\%id%\sce_sys\"
copy "pic0.png" ".\vpk\input\%id%\sce_sys\"
rmdir /S /Q ".\vpk\input\%id%\sce_sys\package"
@ECHO OFF
mode 50,12
ECHO                  BUBBLE-BUILDER
ECHO.
ECHO ..................................................
ECHO.
ECHO.
ECHO.
ECHO                    PLEASE WAIT
ECHO.
ECHO.
ECHO.
ECHO.
timeout 3 >nul
GOTO ZIP
:ZIP
copy "template.xml" ".\vpk\input\%id%\sce_sys\livearea\contents\"
@echo off
IF EXIST .\param.sfo (
    7z.exe a .\vpk\output\"%sfo%".zip ".\vpk\input\%id%\*"
  ) ELSE (
    7z.exe a .\vpk\output\"%id%".zip ".\vpk\input\%id%\*"
    GOTO NEXT5
  )
:NEXT5
ren ".\vpk\output\*.zip" "*.vpk"
copy ".\vpk\output\*.vpk" ".\vpk\archive\"
%SystemRoot%\explorer.exe ".\vpk\output\"
del .\list.txt
del .\template.xml
exit
