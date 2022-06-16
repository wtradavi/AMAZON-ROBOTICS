#!/bin/sh

function check_time (){
	logo
	echo -e $RS"Active Drive:"$CE
	read drive_unit
	if [ $(echo $drive_unit | wc -c) -ne 7 ]; then
		logo
		echo "The Drive Number is a Six-Digit Number. Please Try Again."
		check_time
	else
		ssh -p 55555 obsidial@localhost "timedatectl" >>/tmp/good_time
		timedatectl >> /tmp/bad_time
		logo
		echo -e  $RS Drive Being Checked $CE"                    "$GNS Active Drive On Floor $CE
		echo -e  $(grep Local /tmp/bad_time)"                    "$( grep Local/tmp/good_time)
		echo -e  $(grep Universal /tmp/bad_time)"                    "$( grep Universal/tmp/good_time)
		echo -e  $(grep "RTC time" /tmp/bad_time)"                    "$( grep "RTC time"/tmp/good_time)
		echo -e  $(grep "Time zone" /tmp/bad_time)"                    "$( grep "Time zone"/tmp/good_time)
		echo -e  $(grep "synchronized" /tmp/bad_time)"                    "$( grep "synchronized"/tmp/good_time)
		echo -e  $(grep "NTP" /tmp/bad_time)"                    "$( grep "NTP"/tmp/good_time)
		echo -e  $(grep "local TZ" /tmp/bad_time)"                    "$( grep "local TZ"/tmp/good_time)
		rm /tmp/good_time /tmp/bad_time
		echo "Would You Like To Sync The Time Between These Drives? y/N"
		read -n 1 ANSWER
		if [ $ANSWER = "y" ] || [ $ANSWER = "Y" ]; then
			change_time
		else
			$back
		fi
	fi
	function change_time (){
		date -s $(ssh -p 55555 obsidial@localhost "timedatectl| grep Universal | cut -c 39-54 | sed -e 's/-/./g' -e 's/ /-/g'") && hwclock --systohc && echo "Successfully Completed" || echo "Something Went Wrong. Please Try Again" && sleep 2 && $back
	}
}
check_time
