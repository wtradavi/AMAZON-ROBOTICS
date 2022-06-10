#!/bin/sh

set opt interactive_comments

function logo {
  FONTC=$YS
  LOGOC=$RS
  YS="\e[1;33m"
  BS="\e[0;34m"
  CE="\e[0m"
  RS="\e[1;31m"
  BLS="\e[0;30m"
  DGYS="\e[1;30m"
  LBS="\e[1;34m"
  GNS="\e[0;32m"
  LGNS="\e[1;32m"
  CYS="\e[0;36m"
  LCYS="\e[1;36m"
  DRS="\e[0;31m"
  PS="\e[0;35m"
  LPS="\e[1;35m"
  BRS="\e[0;33m"
  LGYS="\e[0;37m"
  WHS="\e[1;37m" &&
  clear
  echo -e $LOGOC"                    : :   :    :   ::   ::::::  ::::  :    : "$CE
  echo -e $LOGOC"                   :   :  ::  ::  :  :      :  :    : ::   : "$CE
  echo -e $LOGOC"                  :     : : :: : :    :    :   :    : : :  : "$CE
  echo -e $LOGOC"                  ::::::: :    : ::::::   :    :    : :  : : "$CE
  echo -e $LOGOC"                  :     : :    : :    :  :     :    : :   :: "$CE
  echo -e $LOGOC"                  :     : :    : :    : ::::::  ::::  :    : "$CE
  echo -e $LOGOC"                                                                    "$CE
  echo -e $LOGOC"              ::::::                                             "$CE
  echo -e $LOGOC"              :     :  ::::  :::::   ::::  ::::: :  ::::   ::::  "$CE
  echo -e $LOGOC"              :     : :    : :    : :    :   :   : :    : :      "$CE
  echo -e $LOGOC"              ::::::  :    : :::::  :    :   :   : :       ::::  "$CE
  echo -e $LOGOC"              :   :   :    : :    : :    :   :   : :           : "$CE
  echo -e $LOGOC"              :    :  :    : :    : :    :   :   : :    : :    : "$CE
  echo -e $LOGOC"              :     :  ::::  :::::   ::::    :   :  ::::   ::::  "$CE" by DAVID TRAVERS"
  }


function menu_list {
	logo
	echo -e "$(if [[ $a > 0 ]]; then echo -e $FONTC" 1"$CE" - $a"; else echo " " ; fi)" "$(if [[ $h > 0 ]]; then echo -e $FONTC" 8"$CE" - $h"; else echo " " ; fi)" "$(if [[ $o > 0 ]]; then echo -e $FONTC"15"$CE" - $o"; else echo " " ; fi)"
	echo -e "$(if [[ $b > 0 ]]; then echo -e $FONTC" 2"$CE" - $b"; else echo " " ; fi)" "$(if [[ $i > 0 ]]; then echo -e $FONTC" 9"$CE" - $i"; else echo " " ; fi)" "$(if [[ $p > 0 ]]; then echo -e $FONTC"16"$CE" - $p"; else echo " " ; fi)"
	echo -e "$(if [[ $c > 0 ]]; then echo -e $FONTC" 3"$CE" - $c"; else echo " " ; fi)" "$(if [[ $j > 0 ]]; then echo -e $FONTC"10"$CE" - $j"; else echo " " ; fi)" "$(if [[ $q > 0 ]]; then echo -e $FONTC"17"$CE" - $q"; else echo " " ; fi)"
	echo -e "$(if [[ $d > 0 ]]; then echo -e $FONTC" 4"$CE" - $d"; else echo " " ; fi)" "$(if [[ $k > 0 ]]; then echo -e $FONTC"11"$CE" - $k"; else echo " " ; fi)" "$(if [[ $r > 0 ]]; then echo -e $FONTC"18"$CE" - $r"; else echo " " ; fi)"
	echo -e "$(if [[ $e > 0 ]]; then echo -e $FONTC" 5"$CE" - $e"; else echo " " ; fi)" "$(if [[ $l > 0 ]]; then echo -e $FONTC"12"$CE" - $l"; else echo " " ; fi)" "$(if [[ $s > 0 ]]; then echo -e $FONTC"19"$CE" - $s"; else echo " " ; fi)"
	echo -e "$(if [[ $f > 0 ]]; then echo -e $FONTC" 6"$CE" - $f"; else echo " " ; fi)" "$(if [[ $m > 0 ]]; then echo -e $FONTC"13"$CE" - $m"; else echo " " ; fi)" "$BS" b"$CE- Go Back"
	echo -e "$(if [[ $g > 0 ]]; then echo -e $FONTC" 7"$CE" - $g"; else echo " " ; fi)" "$(if [[ $n > 0 ]]; then echo -e $FONTC"14"$CE" - $n"; else echo " " ; fi)" "$BS" 0"$CE- Exit"
	echo -e "Choose: \c"
  }

function main_menu() {															#MENU-MAIN
  logo
	a="Drive Menu                       ";h="                                         ";o="";
	b="Remote Menu                      ";i="                                         ";p="";
	c="                                 ";j="                                         ";q="";
	d="                                 ";k="                                         ";r="";
	e="                                 ";l="                                         ";s="";
	f="                                 ";m="                                         ";
	g="                                 ";n="                                         ";
	#OPTIONS
	a1=drive_menu;h1="";o1="";
	b1=remote_menu;i1="";p1="";
	c1=;j1="";q1="";
	d1="";k1="";r1="";
	e1="";l1="";s1="";
	f1="";m1="";
	g1="";n1="";
	menu_list
	read_input
	options
}



function drive_menu {														#MENU-DRIVE
  logo
	back=main_menu
	home=drive_menu
	a="Ping a Drive                    ";h="Reset Wifi                                ";o="";
	b="Diagnostics/DUSC                ";i="Reboot                                    ";p="";
	c="Check Config Files              ";j="AutoProvision                             ";q="";
	d="Error Codes                     ";k="                                          ";r="";
	e="Switch Port Connection          ";l="                                          ";s="";
	f="Camera Logs                     ";m="                                          ";
	g="Check Time & Date               ";n="                                          ";
	#OPTIONS
	a1=ping_drive;h1="";o1="";
	b1=dusc_util;i1="";p1="";
	c1="";j1=check_provision;q1="";
	d1="";k1="";r1="";
	e1="";l1="";s1="";
	f1="";m1="";
	g1=check_time;n1="";
	menu_list
	read_input
  back=drive_menu
	options
}



function remote_menu {															#MENU-REMOTE
  logo
	back=main_menu
	home=remote_menu
	a="Ping a Drive                   ";h="Reboot Drive                                ";o="";
	b="SSH Into A Drive               ";i="Firmware                                    ";p="";
	c="Send Drive To Charger          ";j="Diagnostics/DUSC                            ";q="";
	d="Error Codes                    ";k="AutoProvision                               ";r="";
	e="Reset Drive's Wifi Config      ";l="                                            ";s="";
	f="Put Drive To Sleep             ";m="                                            ";
	g="Unregister Drive               ";n="                                            ";
	#OPTIONS
	a1=ping_drive;h1="";o1="";
	b1=ssh_connect;i1=firmware_update_remote;p1="";
	c1=charge_drive;j1=dusc_util;q1="";
	d1="";k1=AutoProvision;r1="";
	e1=resetwifiremote;l1="";s1="";
	f1="";m1="";
	g1="";
	menu_list
	read_input
  back=remote_menu
	options

}

YNYES="( $YS y $CE / $YS n $CE )( $YS Enter $CE =yes)"
YNNO="($YSy$CE/$YSn$CE)($YSEnter$CE=no)"
YNONLY="($YSy$CE/$YSn$CE)"
PAKT="Press $YSany key$CE to"
P0TE="Press $YS0$CE to exit..."
PBTGB="Press $YS[b]$CE to go back..."
NUM="Choose: \c"

function read_input() {
	read -n 1 ANSWER
	clear
}

function prompt_connection() {
	echo -e $RS"Are You Plugged Into A Drive?"$CE
	echo $YNNO
}

function prompt_ynyes() {
	echo $YNYES
	read_input
}

function prompt_ynno() {
	echo $YNNO
	read_input
}

function prompt_num() {
	echo $NUM
	read_input
}

#---------Error-Messages-----------------------------------------------------

function error_msg_ynno() {
	logo
	echo $RS"YOU DID NOT MAKE A CORRECT SELECTION."$CE
	echo $YNNO
}

function error_msg_ynyes() {
	logo
	echo $RS"YOU DID NOT MAKE A CORRECT SELECTION."$CE
	echo $YNYES
}

function error_msg_num() {
	logo
	echo $RS"YOU DID NOT MAKE A CORRECT SELECTION."$CE
	echo $PBTGB
}

#---------Menu-Options-----------------------------------------------------

function options() {
	if [[ "$ANSWER" = "0" ]]; then
		exit
	elif [[ "$ANSWER" = "1" ]]; then
		$a1
	elif [[ "$ANSWER" = "2" ]]; then
		$b1
	elif [[ "$ANSWER" = "3" ]]; then
		$c1
	elif [[ "$ANSWER" = "4" ]]; then
		$d1
	elif [[ "$ANSWER" = "5" ]]; then
		$e1
	elif [[ "$ANSWER" = "6" ]]; then
		$f1
	elif [[ "$ANSWER" = "7" ]]; then
		$g1
	elif [[ "$ANSWER" = "8" ]]; then
		$h1
	elif [[ "$ANSWER" = "9" ]]; then
		$i1
	elif [[ "$ANSWER" = "10" ]]; then
		$j1
	elif [[ "$ANSWER" = "11" ]]; then
		$k1
	elif [[ "$ANSWER" = "12" ]]; then
		$l1
	elif [[ "$ANSWER" = "13" ]]; then
		$m1
	elif [[ "$ANSWER" = "14" ]]; then
		$n1
	elif [[ "$ANSWER" = "15" ]]; then
		$o1
	elif [[ "$ANSWER" = "16" ]]; then
		$p1
	elif [[ "$ANSWER" = "17" ]]; then
		$q1
	elif [[ "$ANSWER" = "18" ]]; then
		$r1
	elif [[ "$ANSWER" = "19" ]]; then
		$s1
	elif [[ "$ANSWER" = "b" ]]; then
		$back
	else
	echo $PBTGB
	error_msg_num
	read_input
	options
	fi
}

#---------Functions-----------------------------------------------------
function go_back_or_exit {
	echo $PBTGB
	echo $PAKTE
	read_input
	if [[ "$ANSWER" = "b" ]]; then
		$back
	else
		exit
	fi
}

function columnize { columns=$1; shift; colwidth=$(echo -e "scale=0; $COLUMNS / $columns" | bc) ; printf "$(echo -e $(for i in $(seq 1 $columns); do echo -e "%-$(echo $colwidth)s "; done))\n" "$@"; }

function ping_drive {
  logo
  echo -e $RS"1- Hide The Bullshit"$CE
  echo -e $RS"2- Show Everything"$CE
  prompt_num
  function prompt_drive {
    logo
		echo -e $RS"What is the Drive Number That You Would like to Ping"$CE
  	read drive_unit
  	if [ $(echo $drive_unit | wc -c) -ne 7 ]; then
  		echo "The Drive Number is a Six-Digit Number. Please Try Agan."
  		prompt_drive
  	else
      logo
      if [[ $ANSWER = 1 ]]; then
        echo -e $FONTC"This Drive Has Received "$CE $GNS$(( 100 - $(ping -c 3 kdu-$drive_unit | grep received | cut -d "," -f 3 | cut -d "%" -f 1)))"%"$CE $FONTC" of Packets that It Transmitted."$CE
      elif [[ $ANSWER = 2 ]]; then
        ping -c 3 kdu-$drive_unit
      else
        echo -e $RS"Something Went Wrong"
        go_back_or_exit
      fi
		fi
	}
  prompt_drive
}

function ssh_connect {
	echo -e $RS"What is the Drive Number That You Would like to SSH Into?"$CE
	read drive_unit
	logo
	ssh root@kdu-$drive_unit
	main_menu
}

function charge_drive {
	function prompt_floor {
		echo -e $RS"What Floor is The Drive On [i.e., 1-5]?"$CE
  	read floor
  	if [ $floor -ge 6 ]; then
	  	clear
	  	echo "You must enter a Number 1-5:"
	  	charge_drive
  	else
		prompt_drive
		fi
	}
	function prompt_drive {
		echo -e $RS"What is the Drive Number That You Would like to Send To The Charger?"$CE
  	read drive_unit
  	if [ $(echo $drive_unit | wc -c) -ne 7 ]; then
  		echo "The Drive Number is a Six-Digit Number. Please Try Agan."
  		prompt_drive
  	else
	  	prompt_charger
		fi
	}
	function prompt_charger {
		echo -e $RS"What Charger Would You like to Send It To?"$CE
		read charger_unit
		if [ $charger_unit = "" ]; then
		  	clear
		  	echo "You must enter a Valid Number"
			prompt_charger
	  	else
			prompt_time
		fi
	}
	function prompt_time {
		echo -e $RS"How Long Do You Want It To Charge For?"$CE
		read time
		if [ $time -ge 180 ]; then
		  	clear
		  	echo "You must enter a Number 1-180s:"
		  	prompt_time
	  	else
			execute
		fi
	}
	function execute {
		sudo -u kivasvs /apollo/env/FCXInfra/fwbin/chargeDrive.py -c AMZN -w SYR1 -z $(if [ $floor -le 5 ] &&  [ $floor -ge 2 ]; then echo "paKiva0"$floor; elif [ $floor -eq 1 ]; then echo "saKiva0"$floor; else echo "You must enter a Number 1-5:"; charge_drive; fi) -drive $drive_unit -charger $charger_unit -t $time && echo "The Command Has Succesfully Been Sent"				:Real Code
		go_back_or_exit
	}
	prompt_floor
}

function firmware_update_remote {
	function prompt_drive {
		echo -e $RS"What is the Drive Number That You Would like to Update?"$CE
	  	read drive_unit
	  	if [ $(echo $drive_unit | wc -c) -ne 7 ]; then
	  		echo "The Drive Number is a Six-Digit Number. Please Try Agan."
	  		prompt_drive
	  	else
		  	prompt_version
		fi
	}
	function prompt_version {
		echo -e $RS"What is the Current Version of Firmware You Are Updating The Drive To [Default=22.0]?"$CE
	  	read version
	  	if [[ $version -eq 0 ]]; then
	  		version=22.0
	  		execute
	  	else
		  	execute
		fi
	}
	function execute {
		cd /apollo/env/FCXInfra/var/fcxfw/$version && ./update_drive.sh kdu-$drive_unit && echo "The Update was Successful"
		go_back_or_exit
	}
	prompt_drive
	prompt_version
}

function resetwifiremote {
	function prompt_drive {
		echo -e $RS"What is the Drive Number That You Would like to Reset The Wifi on?"$CE
			read drive_unit
			if [ $(echo $drive_unit | wc -c) -ne 7 ]; then
				echo "The Drive Number is a Six-Digit Number. Please Try Agan."
				prompt_drive
			else
				prompt_version
			fi
		}
	sudo -u kivasvs /apollo/env/FCXInfra/bin/mduexec -d kdu-$drive_unit -c 'reset_wifi_config; exit;' -P 50
}

function dusc_util {
    echo """
                              0=normal
                              1=Slowing
                              2=Limited
                              3=Stopping
                              4=immobilized unpowered"""
    dusc-util -m
}

function check_provision {
  function prompt_drive1 {
    logo
    echo -e $RS"Active Drive on Same Floor: "$CE
    read drive_unit1
    if [ $(echo $drive_unit1 | wc -c) -ne 7 ]; then
      echo "The Drive Number is a Six-Digit Number. Please Try Agan."
      prompt_drive1
    else
      prompt_drive2
    fi
  }
  function prompt_drive2 {
    logo
    echo -e $RS"Drive Unit To Check: "$CE
    read drive_unit2
    if [ $(echo $drive_unit2 | wc -c) -ne 7 ]; then
      echo "The Drive Number is a Six-Digit Number. Please Try Agan."
      prompt_drive2
    else
      read_files
    fi
  }
  function read_files {
    read -r files1 <<< $(echo $(md5sum /home/obsidial/Test/ksk.txt && md5sum /home/obsidial/Test/amazon.pem /home/obsidial/Test/wpa_supplicant.conf));
    read -r files2 <<< $(ssh obsidial@localhost -p 55555 echo $(md5sum /home/obsidial/Test/ksk2.txt &&  md5sum /home/obsidial/Test/amazon2.pem && md5sum /home/obsidial/Test/wpa_supplicant2.conf));
    ksk1=$(echo $files1 | cut -d " " -f 1);
    ksk2=$(echo $files2 | cut -d " " -f 1);
    pem1=$(echo $files1 | cut -d " " -f 3);
    pem2=$(echo $files2 | cut -d " " -f 3);
    wpa1=$(echo $files1 | cut -d " " -f 5);
    wpa2=$(echo $files2 | cut -d " " -f 5);
  }
  function check_ksk {
    logo
    if [ $ksk1 = $ksk2 ]; then
      echo "The KSK file is good"
      check_pem
    else
      echo "The KSK file is bad"
      echo "Would You like to AutoProvision this Drive? Y/n"
      read -n 1 ANSWER
      if [[ $ANSWER -eq "y" || $ANSWER -eq "Y" || $ANSWER -eq "" ]]; then
        scp root@kdu-$drive_unit1:/etc/ksk/ksk.txt root@kdu-$drive_unit2:/etc/ksk/ksk.txt
        check_pem
      else
        check_pem
      fi
    fi
  }
  function check_pem {
    logo
    if [ $pem1 = $pem2 ]; then
      echo "The Pem file is good"
      check_wpa
    else
      echo "The PEM file is bad"
      echo "Would You like to AutoProvision this Drive? Y/n"
      read -n 1 ANSWER
      if [[ $ANSWER -eq "y" || $ANSWER -eq "Y" || $ANSWER -eq "" ]]; then
        scp root@kdu-$drive_unit1:/etc/wpa_supplicant/amazon.pem root@kdu-$drive_unit2:/etc/wpa_supplicant/amazon.pem
        check_wpa
      else
        check_wpa
      fi
    fi
  }
  function check_wpa {
    logo
    if [ $wpa1 = $wpa2 ]; then
      echo "The WPA file is good."
    else
      echo "The WPA file is bad"
      echo "Would You like to AutoProvision this Drive? Y/n"
      read -n 1 ANSWER
      if [[ $ANSWER -eq "y" || $ANSWER -eq "Y" || $ANSWER -eq "" ]]; then
        scp root@kdu-$drive_unit1:/etc/wpa_supplicant/wpa_supplicant.conf root@kdu-$drive_unit2:/etc/wpa_supplicant/wpa_supplicant.conf
        echo "Succesfully Completed"
      else
        $back
      fi
    fi
  }
prompt_drive1
check_ksk
}

function check_time (){
	logo
  rm /tmp/good_time /tmp/bad_time
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
		columnize 2  "                          Drive Being Checked" "                         Active Drive On Floor" "  $(grep "Local" /tmp/bad_time)" " $(grep "Local" /tmp/good_time)" "      $(grep "Universal" /tmp/bad_time)" "     $(grep "Universal" /tmp/good_time)" "$(grep "RTC time" /tmp/bad_time)" "$(grep "RTC time" /tmp/good_time)" " $(grep "Time zone" /tmp/bad_time)" " $(grep "Time zone" /tmp/good_time)" "                 $(grep "synchronized" /tmp/bad_time)" "          $(grep "synchronized" /tmp/good_time)" "   $(grep "NTP" /tmp/bad_time)" "$(grep "NTP" /tmp/good_time)" "       $(grep "local TZ" /tmp/bad_time)" "$(grep "local TZ" /tmp/good_time)"
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

main_menu
