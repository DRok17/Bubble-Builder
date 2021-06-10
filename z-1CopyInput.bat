@echo off
@echo off
dir .\vpk\input /a:d /b > list.txt
set /p id=< .\list.txt


copy ".\input\*.bmp*" "."
copy ".\input\*.jpg*" "."
copy ".\input\*.jpeg*" "."
copy ".\input\*.jfif*" "."
copy ".\input\*.tiff*" "."
copy ".\input\*.png*" "."
IF EXIST .\vpk\input\%id%\data\boot.bin (
    copy ".\1batch\psp.png" "."
    del "boot.png"
  ) ELSE (
    GOTO NEXT
  )
:NEXT

del .\list.txt
exit
