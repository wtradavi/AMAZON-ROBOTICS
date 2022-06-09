#!/bin/sh

function check_time (){
logo
echo -e $RS"Active Drive:"$CE
read drive_unit
if [ $(echo $drive_unit | wc -c) -ne 7 ]; then
echo "YES"
else
good_time=$(ssh root@kdu-$drive_unit "timedatectl")
bad_time=$(timedatectl)
logo
echo -e  "$(echo "                         "$RS Drive Being Checked $CE "                         " $GNS Active Drive On Floor $CE
echo -e  "$(echo $(echo $bad_time | grep Local)"               " $(echo $good_time | grep Local))"
echo -e  "$(echo $(echo $bad_time | grep Universal)"               " $(echo $good_time | grep Universal))"
echo -e  "$(echo $(echo $bad_time | grep "RTC time")"               "$(echo $good_time | grep "RTC time"))"
echo -e  "$(echo $(echo $bad_time | grep "Time zone")"               "$(echo $good_time | grep "Time zone"))"
echo -e  "$(echo $(echo $bad_time | grep "synchronized")"               "$(echo $good_time | grep "synchronized"))"
echo -e  "$(echo $(echo $bad_time | grep "NTP")"               "$(echo $good_time | grep "NTP"))"
echo -e  "$(echo $(echo $bad_time | grep "local TZ")"               "$(echo $good_time | grep "local TZ"))"
echo "Would You Like To Sync The Time Between These Drives? y/N"
read -k 1 ANSWER
if [ $ANSWER = "y" ] || [ $ANSWER = "Y" ]; then
change_time
else 
$back
fi
fi
function change_time (){
date -s $(ssh root@kdu-$drive_unit "timedatectl | grep Universal | cut -c 39-54 | sed -e 's/-/./g' -e 's/ /-/g'") && hwclock --systohc && echo "Successfully Completed" || echo "Something Went Wrong. Please Try Again" && sleep 2 && $back
}
}
		logo
		echo "The Drive Number is a Six-Digit Number. Please Try Again."
		check_time