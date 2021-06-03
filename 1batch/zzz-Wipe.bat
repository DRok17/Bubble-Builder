@echo off
del "..\*.png*"
del "..\*.jpg*"
del "..\*.jfif*"
del "..\*.sfo*"
del "..\input\*.png*"
del "..\input\*.jpg*"
del "..\input\*.jfif*"
rmdir /S /Q "..\vpk\input"
rmdir /S /Q "..\vpk\output"
md "..\vpk\input"
md "..\vpk\output"
exit
