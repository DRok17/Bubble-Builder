@echo off
set /p title=< .\name.txt
set /p id=< .\id.txt
vita-mksfoex -s TITLE_ID=%id% "%title%" param.sfo
copy "param.sfo" ".\sce_sys\"
exit
