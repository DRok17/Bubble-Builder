:MENU
@ECHO OFF
mode 50,12
ECHO                  BUBBLE-BUILDER
ECHO.
ECHO ..................................................
ECHO.
@echo off
IF EXIST .\txt\name.txt (
    @echo off
    set "BOM=EF BB BF"
    type ".\txt\name.txt" | clip
    GOTO BUBNAME
  ) ELSE (
    GOTO BUBNAME
  )
:BUBNAME
@set /p title="Bubble Name: "
@echo off
IF EXIST .\txt\id.txt (
    @echo off
    set "BOM=EF BB BF"
    type ".\txt\id.txt" | clip
    GOTO BUBID
  ) ELSE (
    GOTO BUBID
  )
:BUBID
@set /p id="Title ID (9 char MAX [CAPS or #]): "
@echo|set /p="%title%"> ".\txt\name.txt"
@echo|set /p="%id%"> ".\txt\id.txt"
vita-mksfoex -s TITLE_ID=%id% "%title%" param.sfo
copy "param.sfo" ".."
exit
