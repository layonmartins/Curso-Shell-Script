#!/bin/bash
# Example Yad
Exite=$(yad --form --image skull.png --image-on-top \
	--title "Terminal Root" \
	--text "Example <b>YAD</b> to <big><b>Terminal root</b></big>" \
	--field Nome 'Layon' \
	--field Birth:DT 08/02/1989 \
	--field "How long time do you use <b>Linux</b>:Num" '1!0..20!1' \
	--field "Favorite sites:CB" 'Terminal Root!BR-Linux!Dicas-l!Viva o Linux!Others' \
	--field "I'll start using yad:CHK" TRUE \
	--field "I'll continue using zenity:CHK")
echo $Exite

#IFS=',' read Name Birth HowLongTime Sites Yad Zenity <<< "$Exite"
echo $Exite | tr '|' ',' >> exite.csv
#echo $Name ^ $Birth ^ HowLongTime ^ $Sites ^ $Yad ^ $Zenity
