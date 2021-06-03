@echo off
copy "bg.bmp" ".\backup"
copy "bg.jpg" ".\backup"
copy "bg.jpeg" ".\backup"
copy "bg.jfif" ".\backup"
copy "bg.tiff" ".\backup"
copy "icon0.bmp" ".\backup"
copy "icon0.jpg" ".\backup"
copy "icon0.jpeg" ".\backup"
copy "icon0.jfif" ".\backup"
copy "icon0.tiff" ".\backup"
copy "startup.bmp" ".\backup"
copy "startup.jpg" ".\backup"
copy "startup.jpeg" ".\backup"
copy "startup.jfif" ".\backup"
copy "startup.tiff" ".\backup"
copy "pic0.bmp" ".\backup"
copy "pic0.jpg" ".\backup"
copy "pic0.jpeg" ".\backup"
copy "pic0.jfif" ".\backup"
copy "pic0.tiff" ".\backup"



@echo off
call scale.bat -source bg.png -target bg1.png -max-height 540 -max-width 960 -keep-ratio no -force yes
call scale.bat -source icon0.png -target icon01.png -max-height 128 -max-width 128 -keep-ratio no -force yes
call scale.bat -source startup.png -target startup1.png -max-height 158 -max-width 280 -keep-ratio no -force yes
call scale.bat -source pic0.png -target pic01.png -max-height 544 -max-width 960 -keep-ratio no -force yes

@echo off
del bg.png
del icon0.png
del startup.png
del pic0.png
ren bg1.png bg.png
ren icon01.png icon0.png
ren startup1.png startup.png
ren pic01.png pic0.png

@echo off
del "bg.bmp"
del "bg.jpg"
del "bg.jpeg"
del "bg.jfif"
del "bg.tiff"
del "icon0.bmp"
del "icon0.jpg"
del "icon0.jpeg"
del "icon0.jfif"
del "icon0.tiff"
del "startup.bmp"
del "startup.jpg"
del "startup.jpeg"
del "startup.jfif"
del "startup.tiff"
del "pic0.bmp"
del "pic0.jpg"
del "pic0.jpeg"
del "pic0.jfif"
del "pic0.tiff"
exit
