#!/bin/bash
weekOfYear=$(date +%W)
dayOfWeek=$(date +%w)
isTrashWeek=$(($weekOfYear % 4 == 0)) # Every 4th week
isTrashDay=$(($dayOfWeek == 1)) # Tuesday
isCommunalTrashDay=$(($dayOfWeek == 2)) # Wednesday

if [ $isTrashWeek == 1 ] && [ $isTrashDay == 1 ] ;
then
	zenity --question --text="Kivitted már a szelektív hulladékgyűjtőket?" --title="Holnap gyűjtik a szelektív hulladékot" --display=:0.0 &
fi

if [ $isCommunalTrashDay == 1 ] ;
then
	zenity --question --text="Kivitted már a kommunális hulladékgyűjtőt?" --title="Holnap gyűjtik a kommunális hulladékot" --display=:0.0 &
fi
