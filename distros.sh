#!/bin/bash
while true;
	do
	distros=$(dialog --stdout --title "Choose your distro" --menu "What are your favorit distro?" 0 40 0 \
			1 "Debian"    \
			2 "Red Hat"   \
			3 "Gentoo"    \
			4 "Slackware" \
			5 "Ubuntu"	  \
			0 "Exit"      )
	
	[ $? -ne 0] && echo "Canceled." && break

	case "$distros" in
		1) dialog --stdout --msgbox "This is the beast distro! :)" 10 50  ;;
		2) dialog --title 'Red Hat' --infobox '\nIt is now ENTERPRISE. :(' 10 50 ; break ;;
		3) dialog --title 'Gentoo' --msgbox '\nYou are Psycho!' 10 50  ;;
		4) dialog --title 'Sleackware' --yesno '\nYou are atheist?' 10 50;

			if [ $? = 0 ]; then
				dialog --title 'Slackware atheist' --infobox '\nI knew it!' 0 0;
			else
				dialog --title 'Slackware Not atheist' --infobox '\nCoward.' 0 0;
				fi
			
			break ;;
	
		5) dialog --title 'Ubuntu' --timebox '\nI will record the time that you choose this shit.' 0 0 ;;
		0) echo "You choose exit" ; break ;;
	esac
	done

