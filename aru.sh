#!/bin/bash
	FONTC=$YS
# Author Title
#          Description
# ------------------------------------------------------------------

# ---------Variables-------------------------------------------------
#yellow start
	YS="\e[1;33m"
#blue start
	BS="\e[0;34m"
#color end
	CE="\e[0m"
#red start
	RS="\e[1;31m"
#black start
	BLS="\e[0;30m"
#dark gray start
	DGYS="\e[1;30m"
#light blue start
	LBS="\e[1;34m"
#green start
	GNS="\e[0;32m"
#light green start
	LGNS="\e[1;32m"
#cyan start
	CYS="\e[0;36m"
#light cyan start
	LCYS="\e[1;36m"
#light red start
	DRS="\e[0;31m"
#purple start
	PS="\e[0;35m"
#light purple start
	LPS="\e[1;35m"
#brown start
	BRS="\e[0;33m"
#light gray start
	LGYS="\e[0;37m"
#white start
	WHS="\e[1;37m"
#Logo Color
	LOGOC=$LPS
#Font Color
	FONTC=$YS

#setting frequent stings
	YNYES="("$YS"y"$CE"/"$YS"n"$CE")("$YS"Enter"$CE"=yes)"
	YNNO="("$YS"y"$CE"/"$YS"n"$CE")("$YS"Enter"$CE"=no)"
	YNONLY="("$YS"y"$CE"/"$YS"n"$CE")"
	PAKT="Press "$YS"any key$CE to"
	P0TE="Press "$YS"0$CE to exit..."
	PBTGB="Press "$YS"[b]$CE to go back..."
	TNI=""$RS"Tool is not installed. To install it type '"$CE""$YS"install"$CE""$RS"'."$CE""
	NUM="Choose: "


function logo {
	clear
	echo -e "$LOGOC	                                                            	$CE"
	echo -e "$LOGOC                    # #   #    #   ##   ######  ####  #    # 	$CE"
	echo -e "$LOGOC                   #   #  ##  ##  #  #      #  #    # ##   # 	$CE"
	echo -e "$LOGOC                  #     # # ## # #    #    #   #    # # #  # 	$CE"
	echo -e "$LOGOC                  ####### #    # ######   #    #    # #  # # 	$CE"
	echo -e "$LOGOC                  #     # #    # #    #  #     #    # #   ## 	$CE"
	echo -e "$LOGOC                  #     # #    # #    # ######  ####  #    # 	$CE"
	echo -e "$LOGOC                                                                    $CE"
	echo -e "$LOGOC              ######                                             	$CE"
	echo -e "$LOGOC              #     #  ####  #####   ####  ##### #  ####   ####  	$CE"
	echo -e "$LOGOC              #     # #    # #    # #    #   #   # #    # #      	$CE"
	echo -e "$LOGOC              ######  #    # #####  #    #   #   # #       ####  	$CE"
	echo -e "$LOGOC              #   #   #    # #    # #    #   #   # #           # 	$CE"
	echo -e "$LOGOC              #    #  #    # #    # #    #   #   # #    # #    # 	$CE"
	echo -e "$LOGOC              #     #  ####  #####   ####    #   #  ####   ####  	$CE by DAVID TRAVERS"
	echo -e ""$LOGOC" "$CE""}


function menu_list {
	logo
	echo -e "$(if [[ $a > 0 ]]; then echo -e ""$FONTC" 1"$CE"- $a";fi)		 $(if [[ $h > 0 ]]; then echo -e ""$FONTC" 8"$CE"- $h";fi)  		$(if [[ $o > 0 ]]; then echo -e ""$FONTC"15"$CE"- $o";fi)"
	echo -e "$(if [[ $b > 0 ]]; then echo -e ""$FONTC" 2"$CE"- $b";fi)		 $(if [[ $i > 0 ]]; then echo -e ""$FONTC" 9"$CE"- $i";fi)      		$(if [[ $p > 0 ]]; then echo -e ""$FONTC"16"$CE"- $p";fi)"
	echo -e "$(if [[ $c > 0 ]]; then echo -e ""$FONTC" 3"$CE"- $c";fi)          $(if [[ $j > 0 ]]; then echo -e ""$FONTC"10"$CE"- $j";fi)			$(if [[ $q > 0 ]]; then echo -e ""$FONTC"17"$CE"- $q";fi)"
	echo -e "$(if [[ $d > 0 ]]; then echo -e ""$FONTC" 4"$CE"- $d";fi)          $(if [[ $k > 0 ]]; then echo -e ""$FONTC"11"$CE"- $k";fi)			$(if [[ $r > 0 ]]; then echo -e ""$FONTC"18"$CE"- $r";fi)"
	echo -e "$(if [[ $e > 0 ]]; then echo -e ""$FONTC" 5"$CE"- $e";fi)          $(if [[ $l > 0 ]]; then echo -e ""$FONTC"12"$CE"- $l";fi)			$(if [[ $s > 0 ]]; then echo -e ""$FONTC"19"$CE"- $s";fi)"
	echo -e "$(if [[ $f > 0 ]]; then echo -e ""$FONTC" 6"$CE"- $f";fi)          $(if [[ $m > 0 ]]; then echo -e ""$FONTC"13"$CE"- $m";fi)			"$BS" b"$CE"- Go Back"
	echo -e "$(if [[ $g > 0 ]]; then echo -e ""$FONTC" 7"$CE"- $g";fi)          $(if [[ $n > 0 ]]; then echo -e ""$FONTC"14"$CE"- $n";fi)			"$BS" 0"$CE"- Exit"
	echo "Choose: " }


# ---------Main-Menus-----------------------------------------------------

function main_menu() {															#MENU:MAIN
	#MENU
	a="Drive Menu";			h="";			o="";	
	b="Remote Menu"; 		i="";			p="";
	c="Settings";			j="";			q="";
	d="";				k="";			r="";
	e="";				l="";			s="";
	f="";				m="";			
	g="";				n="";
	#OPTIONS
	a1=drive_menu;		h1=;			o1=;
	b1=remote_menu;			i1=;			p1=;
	c1=settings_menu;				j1=;			q1=;
	d1=;				k1=;			r1=;
	e1=;				l1=;			s1=;
	f1=;				m1=;
	g1=;				n1=;
	menu_list
	read_input
	options
}



function drive_menu {															#MENU:DRIVE
	back=main_menu
	home=drive_menu
	#MENU
	a="Ping a Drive";		h="Reset Wifi";		o="";	
	b="Diagnostics/DUSC"; 		i="Reboot";		p="";
	c="Check Config Files";		j="";			q="";
	d="Error Codes";		k="";			r="";
	e="Switch Port Connection";	l="";			s="";
	f="Camera Logs";		m="";			
	g="Check Time & Date";		n="";
	#OPTIONS
	a1=ping_drive;			h1=;			o1=;
	b1=;				i1=;			p1=;
	c1=;				j1=;			q1=;
	d1=;				k1=;			r1=;
	e1=;				l1=;			s1=;
	f1=;				m1=;
	g1=;				n1=;
	menu_list
	read_input
	options
}



function remote_menu {															#MENU:REMOTE
	back=main_menu
	home=remote_menu
	#MENU
	a="Ping a Drive";		h="Reboot Drive";	o="";	
	b="SSH Into A Drive"; 		i="Firmware";		p="";
	c="Send Drive To Charger";	j="Diagnostics/DUSC";			q="";
	d="Error Codes";		k="";			r="";
	e="Reset Drive's Wifi Config";	l="";			s="";
	f="Put Drive To Sleep";		m="";
	g="Unregister Drive";		n="";
	#OPTIONS
	a1=ping_drive;			h1=;			o1=;
	b1=ssh_connect;			i1=firmware_update_remote;p1=;
	c1=charge_drive;		j1=;			q1=;
	d1=;				k1=;			r1=;
	e1=;				l1=;			s1=;
	f1=;				m1=;
	g1=;
	menu_list
	read_input
	options
}

function settings_menu {														#MENU:SETTINGS
	back=main_menu
	home=settings_menu
	#MENU
	a="Edit Menus";			h="";			o="";	
	b="Change The Color"; 		i="";			p="";
	c="";				j="";			q="";
	d="";				k="";			r="";
	e="";				l="";			s="";
	f="";				m="";			
	g="";				n="";
	#OPTIONS
	a1=settings_menu_edit;		h1=;			o1=;
	b1=color_change;			i1=;			p1=;
	c1=;				j1=;			q1=;
	d1=;				k1=;			r1=;
	e1=;				l1=;			s1=;
	f1=;				m1=;
	g1=;				n1=;
	menu_list
	read_input
	options
}

function color_change {															#MENU:SETTINGS SUBMENU:COLOR CHANGE
	back=setting_menu
	home=color_change
	logo
	echo $FONTC 1- Change Font Color $CE
	echo $FONTC 2- Change Logo Color $CE
	read_input
	if [ "$ANSWER" = "1" ]; then 
		theme=FONT
		line=45
	elif [ "$ANSWER" = "2" ]; then
		theme=LOGO
		line=43
	else
		prompt_num
		color_change
	fi
	#MENU
	echo $YS  1- Change To Yellow$CE"				"$RS  8- Change To Red $CE"		"$CYS  15- Change To Cyan $CE
	echo $BS  2- Change To Blue $CE" 				"$DRS  9- Change To Dark Red $CE"		"$LCYS  16- Change To Light Cyan $CE 
	echo $LBS  3- Change To Light Blue $CE"			"$GNS  10- Change To Green $CE 
	echo $BLS  4- Change To Black $CE"				"$LGNS  11- Change To Light Green $CE 		
	echo $DGYS  5- Change To Dark Grey $CE" 			"$WHS  12- Change To White $CE 
	echo $LGYS  " "6- Change To Light Grey $CE"			"$PS  13- Change To Purple $CE" 			"$BS b $CE- Go Back	
	echo $BRS  7- Change To Brown $CE"				"$LPS  14- Change To Light Purple $CE"		"$BS 0 $CE- Exit
	echo "Choose: "
	read_input
	function options1 {
		if [[ "$ANSWER" = "0" ]]; then
			exit
		elif [[ "$ANSWER" = "1" ]]; then
			sed -i ''$line's/.*/	'$theme'C=$YS/' aru.sh
		elif [[ "$ANSWER" = "2" ]]; then
			sed -i ''$line's/.*/	'$theme'C=$BS/' aru.sh
		elif [[ "$ANSWER" = "3" ]]; then
			sed -i ''$line's/.*/	'$theme'C=$LBS/' aru.sh
		elif [[ "$ANSWER" = "4" ]]; then
			sed -i ''$line's/.*/	'$theme'C=$BLS/' aru.sh
		elif [[ "$ANSWER" = "5" ]]; then
			sed -i ''$line's/.*/	'$theme'C=$DGYS/' aru.sh
		elif [[ "$ANSWER" = "6" ]]; then
			sed -i ''$line's/.*/	'$theme'C=$LGYS/' aru.sh
		elif [[ "$ANSWER" = "7" ]]; then
			sed -i ''$line's/.*/	'$theme'C=$BRS/' aru.sh
		elif [[ "$ANSWER" = "8" ]]; then
			sed -i ''$line's/.*/	'$theme'C=$RS/' aru.sh
		elif [[ "$ANSWER" = "9" ]]; then
			sed -i ''$line's/.*/	'$theme'C=$DRS/' aru.sh
		elif [[ "$ANSWER" = "10" ]]; then
			sed -i ''$line's/.*/	'$theme'C=$GNS/' aru.sh
		elif [[ "$ANSWER" = "11" ]]; then
			sed -i ''$line's/.*/	'$theme'C=$LGNS/' aru.sh
		elif [[ "$ANSWER" = "12" ]]; then
			sed -i ''$line's/.*/	'$theme'C=$WHS/' aru.sh
		elif [[ "$ANSWER" = "13" ]]; then
			sed -i ''$line's/.*/	'$theme'C=$PS/' aru.sh
		elif [[ "$ANSWER" = "14" ]]; then
			sed -i ''$line's/.*/	'$theme'C=$LPS/' aru.sh
		elif [[ "$ANSWER" = "15" ]]; then
			sed -i ''$line's/.*/	'$theme'C=$CYS/' aru.sh
		elif [[ "$ANSWER" = "16" ]]; then
			sed -i ''$line's/.*/	'$theme'C=$LCYS/' aru.sh
		elif [[ "$ANSWER" = "17" ]]; then
			sed -i ''$line's/.*/	'$theme'C=$YS/' aru.sh
		elif [[ "$ANSWER" = "b" ]]; then
			$back
		else
		error_msg_num
		read_input
		options1
		fi
		}
	zsh aru.sh
}

function settings_menu_edit {														#MENU:SETTINGS SUBMENU:EDIT MENUS
	back=settings_menu
	home=settings_menu_edit
	#MENU
	a=$(grep "#MENU:" aru.sh | sed -e '/grep \"#MENU:/d' -e'/SUBMENU/d' | sed -n 1p | cut -d ":" -f 2);				h="";			o="";	
	b=$(grep "#MENU:" aru.sh | sed -e '/grep \"#MENU:/d' -e'/SUBMENU/d' | sed -n 2p | cut -d ":" -f 2); 				i="";			p="";
	c=$(grep "#MENU:" aru.sh | sed -e '/grep \"#MENU:/d' -e'/SUBMENU/d' | sed -n 3p | cut -d ":" -f 2);				j="";			q="";
	d=$(grep "#MENU:" aru.sh | sed -e '/grep \"#MENU:/d' -e'/SUBMENU/d' | sed -n 4p | cut -d ":" -f 2);				k="";			r="";
	e=$(grep "#MENU:" aru.sh | sed -e '/grep \"#MENU:/d' -e'/SUBMENU/d' | sed -n 5p | cut -d ":" -f 2);				l="";			s="";
	f=$(grep "#MENU:" aru.sh | sed -e '/grep \"#MENU:/d' -e'/SUBMENU/d' | sed -n 6p | cut -d ":" -f 2);				m="";			
	g=$(grep "#MENU:" aru.sh | sed -e '/grep \"#MENU:/d' -e'/SUBMENU/d' | sed -n 7p | cut -d ":" -f 2);				n="";
	#OPTIONS
	a1=;				h1=;			o1=;
	b1=;				i1=;			p1=;
	c1=;				j1=;			q1=;
	d1=settings_menu_edit_submenus;				k1=;			r1=;
	e1=;				l1=;			s1=;
	f1=;				m1=;
	g1=;				n1=;
	menu_list
	read_input
	options
}



function settings_menu_edit_submenus {														#MENU:SETTINGS SUBMENU:EDIT SUBMENUS
	back=settings_menu_edit
	home=settings_menu_edit_submenus
	#MENU
	a=$(grep "#MENU:" aru.sh | sed -e '/grep \"#MENU:/d' | grep "SUBMENU:" | cut -d ":" -f 3 | sed -n 1p) ;				h="";			o="";	
	b=$(grep "#MENU:" aru.sh | sed -e '/grep \"#MENU:/d' | grep "SUBMENU:" | cut -d ":" -f 3 | sed -n 2p); 				i="";			p="";
	c=$(grep "#MENU:" aru.sh | sed -e '/grep \"#MENU:/d' | grep "SUBMENU:" | cut -d ":" -f 3 | sed -n 3p);				j="";			q="";
	d=$(grep "#MENU:" aru.sh | sed -e '/grep \"#MENU:/d' | grep "SUBMENU:" | cut -d ":" -f 3 | sed -n 4p);				k="";			r="";
	e=$(grep "#MENU:" aru.sh | sed -e '/grep \"#MENU:/d' | grep "SUBMENU:" | cut -d ":" -f 3 | sed -n 5p);				l="";			s="";
	f=$(grep "#MENU:" aru.sh | sed -e '/grep \"#MENU:/d' | grep "SUBMENU:" | cut -d ":" -f 3 | sed -n 6p);				m="";			
	g=$(grep "#MENU:" aru.sh | sed -e '/grep \"#MENU:/d' | grep "SUBMENU:" | cut -d ":" -f 3 | sed -n 7p);				n="";
	#OPTIONS
	a1=;				h1=;			o1=;
	b1=;				i1=;			p1=;
	c1=;				j1=;			q1=;
	d1=;				k1=;			r1=;
	e1=;				l1=;			s1=;
	f1=;				m1=;
	g1=;				n1=;
	read_input
	options
}



# ---------Prompts-----------------------------------------------------


function read_input() {
	read ANSWER
	clear
}

function prompt_connection() {
	echo -e ""$RS"Are You Plugged Into A Drive?"$CE""
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

# ---------Error-Messages-----------------------------------------------------

function error_msg_ynno() {
	logo
	echo ""$RS"YOU DID NOT MAKE A CORRECT SELECTION."$CE""
	echo $YNNO
}

function error_msg_ynyes() {
	logo
	echo ""$RS"YOU DID NOT MAKE A CORRECT SELECTION."$CE""
	echo $YNYES
}

function error_msg_num() {
	logo
	echo ""$RS"YOU DID NOT MAKE A CORRECT SELECTION."$CE""
	echo $PBTGB
}

# ---------Menu-Options-----------------------------------------------------

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



# ---------Functions-----------------------------------------------------
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
  
function ping_drive {
	echo -e ""$RS"What is the Drive Number That You Would like to Ping?"$CE""
	read drive_unit
	logo
	#For Testing - Make sure to use google.com or a website to test functionality
	echo -e ""$FONTC"This Drive Has Received "$CE"" "$GNS"$(( 100 - $(ping -c 3 $drive_unit | grep received | cut -d "," -f 3 | cut -d "%" -f 1)))"%"$CE"" ""$FONTC" of Packets that It Transmitted."$CE""		#Test Code	
	#echo -e ""$FONTC"This Drive Has Received "$CE"" "$GNS"$(( 100 - $(ping -c 3 kdu-$drive_unit | grep received | cut -d "," -f 3 | cut -d "%" -f 1)))"%"$CE"" ""$FONTC" of Packets that It Transmitted."$CE""     	#Real Code
	go_back_or_exit
}
  
function ssh_connect {
  	echo -e ""$RS"What is the Drive Number That You Would like to SSH Into?"$CE""
  	read drive_unit
	logo
	# Testing Purposes
	#echo "ssh root@kdu-$drive_unit -pw pizza"	#Test Code
  	ssh root@kdu-$drive_unit			#Real Code
  	main_menu	
}

function charge_drive {
	function prompt_floor {
		echo -e ""$RS"What Floor is The Drive On [i.e., 1-5]?"$CE""
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
		echo -e ""$RS"What is the Drive Number That You Would like to Send To The Charger?"$CE""
	  	read drive_unit
	  	if [ $(echo $drive_unit | wc -c) -ne 7 ]; then
	  		echo "The Drive Number is a Six-Digit Number. Please Try Agan."
	  		prompt_drive	
	  	else
		  	prompt_charger
		fi
	}
	function prompt_charger {
		echo -e ""$RS"What Charger Would You like to Send It To?"$CE""
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
		echo -e ""$RS"How Long Do You Want It To Charge For?"$CE""
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
		#This command is for testing purposes. Comment when done and uncomment the one below it
		#echo "sudo -u kivasvs /apollo/env/FCXInfra/fwbin/chargeDrive.py -u $USER -c AMZN -w SYR1 -z $(if [ $floor -le 5 ] &&  [ $floor -ge 2 ]; then echo "paKiva0"$floor; elif [ $floor -eq 1 ]; then echo "saKiva0"$floor; else echo "You must enter a Number 1-5:"; charge_drive; fi) -drive $drive_unit -charger $charger_unit -t $time" && echo "The Command Has Succesfully Been Sent"			#Test Code
		sudo -u kivasvs /apollo/env/FCXInfra/fwbin/chargeDrive.py -u $USER -c AMZN -w SYR1 -z $(if [ $floor -le 5 ] &&  [ $floor -ge 2 ]; then echo "paKiva0"$floor; elif [ $floor -eq 1 ]; then echo "saKiva0"$floor; else echo "You must enter a Number 1-5:"; charge_drive; fi) -drive $drive_unit -charger $charger_unit -t $time && echo "The Command Has Succesfully Been Sent"				#Real Code
		go_back_or_exit
	}
	prompt_floor
}

function firmware_update_remote {
	function prompt_drive {
		echo -e ""$RS"What is the Drive Number That You Would like to Send To The Charger?"$CE""
	  	read drive_unit
	  	if [ $(echo $drive_unit | wc -c) -ne 7 ]; then
	  		echo "The Drive Number is a Six-Digit Number. Please Try Agan."
	  		prompt_drive	
	  	else
		  	prompt_version
		fi
	}
	function prompt_version {
		echo -e ""$RS"What is the Current Version of Firmware You Are Updating The Drive To [Default=22.0]?"$CE""
	  	read version
	  	if [[ $version -eq 0 ]]; then
	  		version=22.0
	  		execute	
	  	else
		  	execute
		fi
	}
	function execute {
		#Testing Purposes
		#echo "cd /apollo/env/FCXInfra/var/fcxfw/$version && sudo -u kivasvs ./update_drive.sh kdu-$drive_unit && echo "The Update was Successful!""			#Test Code
		cd /apollo/env/FCXInfra/var/fcxfw/$version && sudo -u kivasvs ./update_drive.sh kdu-$drive_unit && echo "The Update was Successful!"				#Real Code
		go_back_or_exit
	}
	prompt_drive
	prompt_version
}

#----------------------------------------------------------------------------------------------------------
clear
main_menu

	YNONLY="("$YS"y"$CE"/"$YS"n"$CE")"
	PAKT="Press "$YS"any key$CE to"
	PAKTC="Press "$YS"any key$CE to continue..."
	PBTGB="Press "$YS"[b]$CE to go back..."
	TNI=""$RS"Tool is not installed. To install it type '"$CE""$YS"install"$CE""$RS"'."$CE""
	NUM="Choose: "

# ---------Functions-----------------------------------------------------

function logo {
	clear
	echo -e "$RS	                                                            	$CE"
	echo -e "$RS                    # #   #    #   ##   ######  ####  #    # 	$CE"
	echo -e "$RS                   #   #  ##  ##  #  #      #  #    # ##   # 	$CE"
	echo -e "$RS                  #     # # ## # #    #    #   #    # # #  # 	$CE"
	echo -e "$RS                  ####### #    # ######   #    #    # #  # # 	$CE"
	echo -e "$RS                  #     # #    # #    #  #     #    # #   ## 	$CE"
	echo -e "$RS                  #     # #    # #    # ######  ####  #    # 	$CE"
	echo -e "$RS                                                                    $CE"
	echo -e "$RS              ######                                             	$CE"
	echo -e "$RS              #     #  ####  #####   ####  ##### #  ####   ####  	$CE"
	echo -e "$RS              #     # #    # #    # #    #   #   # #    # #      	$CE"
	echo -e "$RS              ######  #    # #####  #    #   #   # #       ####  	$CE"
	echo -e "$RS              #   #   #    # #    # #    #   #   # #           # 	$CE"
	echo -e "$RS              #    #  #    # #    # #    #   #   # #    # #    # 	$CE"
	echo -e "$RS              #     #  ####  #####   ####    #   #  ####   ####  	$CE		 by "$COL"DAVID TRAVERS$CE"
  echo -e ""$YS" "$CE""}

# ---------Prompts-----------------------------------------------------


function read_input() {
	read ANSWER
	clear
}

function prompt_connection() {
	echo -e ""$RS"Are You Connected to a Drive Via Hardwire?"$CE""
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

function error_msg_ynno() {
	logo
	echo ""$RS"YOU DID NOT MAKE A CORRECT SELECTION."$CE""
	echo $YNNO
}

function error_msg_ynyes() {
	logo
	echo ""$RS"YOU DID NOT MAKE A CORRECT SELECTION."$CE""
	echo $YNYES
}

function error_msg_num() {
	logo
	echo ""$RS"YOU DID NOT MAKE A CORRECT SELECTION."$CE""
	echo $NUM
}

# ---------Menu-Options-----------------------------------------------------

function main_options() {
	if [[ "$ANSWER" = "0" ]]; then
		exit
	elif [[ "$ANSWER" = "y" || "$ANSWER" = "Y" ]]; then
		banner_hardwired
	elif [[ "$ANSWER" = "n" || "$ANSWER" = "N" || "$ANSWER" = "" ]]; then
		banner_remote
	fi
}

function hardwired_options() {
	if [[ "$ANSWER" = "0" ]]; then
		exit
	elif [[ "$ANSWER" = "1" ]]; then
		logo
		echo -e ""$RS"What Drive Would You like to Ping?"$CE""
		read drive_unit
		logo
		echo -e ""$YS"This Drive Has Received "$CE"" "$GNS"$(( 100 - $(ping -c 3 $drive_unit | grep received | cut -d "," -f 3 | cut -d "%" -f 1)))"%"$CE"" ""$YS" of Packets that It Transmitted."$CE""
		echo $PBTGB
		read_input
		if [[ "$ANSWER" = "b" ]]; then
			$back
		else
			exit
		fi
	elif [[ "$ANSWER" = "2" ]]; then
		#statements
	elif [[ "$ANSWER" = "3" ]]; then
		#statements
	elif [[ "$ANSWER" = "4" ]]; then
		#statements
	elif [[ "$ANSWER" = "5" ]]; then
		#statements
	elif [[ "$ANSWER" = "6" ]]; then
		#statements
	elif [[ "$ANSWER" = "7" ]]; then
		#statements
	elif [[ "$ANSWER" = "8" ]]; then
		#statements
	elif [[ "$ANSWER" = "9" ]]; then
		#statements
	elif [[ "$ANSWER" = "b" ]]; then
		$back
	else
		error_msg_num
		read_input
	fi
}

function remote_options() {
	if [[ "$ANSWER" = "0" ]]; then
		exit
	elif [[ "$ANSWER" = "1" ]]; then
		logo
		echo -e ""$RS"What Drive Would You like to Ping?"$CE""
		read drive_unit
		logo
		echo -e ""$YS"This Drive Has Received "$CE"" "$GNS"$(( 100 - $(ping -c 3 $drive_unit | grep received | cut -d "," -f 3 | cut -d "%" -f 1)))"%"$CE"" ""$YS" of Packets that It Transmitted."$CE""
		echo $PBTGB
		read_input
		if [[ "$ANSWER" = "b" ]]; then
			$back
		else
			exit
		fi
	elif [[ "$ANSWER" = "2" ]]; then
		#statements
	elif [[ "$ANSWER" = "3" ]]; then
		#statements
	elif [[ "$ANSWER" = "4" ]]; then
		#statements
	elif [[ "$ANSWER" = "5" ]]; then
		#statements
	elif [[ "$ANSWER" = "6" ]]; then
		#statements
	elif [[ "$ANSWER" = "7" ]]; then
		#statements
	elif [[ "$ANSWER" = "8" ]]; then
		#statements
	elif [[ "$ANSWER" = "9" ]]; then
		#statements
	elif [[ "$ANSWER" = "b" ]]; then
		$back
	else
		error_msg_num
		read_input
	fi
}

# ---------Pages-----------------------------------------------------

function banner_main() {
	logo
	prompt_connection
	prompt_ynno
	main_options
}



function banner_hardwired {
	back=banner_main
	close=banner_hardwired
	logo
	echo -e ""$YS" 1"$CE"- Ping A Drive          "$YS" 8"$CE"- Reset Wifi  "$BS" b"$CE"- Go Back"
	echo -e ""$YS" 2"$CE"- Diagnostics/DUSC      "$YS" 9"$CE"- Reboot      "$BS" 0"$CE"- Exit"
	echo -e ""$YS" 3"$CE"- Check Config Files"
	echo -e ""$YS" 4"$CE"- Error Codes"
	echo -e ""$YS" 5"$CE"- Switch Port Connection"
	echo -e ""$YS" 6"$CE"- Camera Logs"
	echo -e ""$YS" 7"$CE"- Check Time & Date"
	echo "Choose: "
	read_input
	hardwired_options
}


function banner_remote {
	back=banner_main
	close=banner_remote
	logo
	echo -e ""$YS" 1"$CE"- Ping A Drive 		"$YS" 8"$CE"- Reboot Drive	"$BS" b"$CE"- Go Back"
	echo -e ""$YS" 2"$CE"- SSH Into A Drive	      	"$YS" 9"$CE"- Firmware		"$BS" 0"$CE"- Exit"
	echo -e ""$YS" 3"$CE"- Send Drive To Charger"
	echo -e ""$YS" 4"$CE"- Reset Drive's Wifi Config"
	echo -e ""$YS" 5"$CE"- Put Drive To Sleep"
	echo -e ""$YS" 6"$CE"- Unregister Drive"
	echo -e ""$YS" 7"$CE"- Shutdown Drive"
	echo "Choose: "
	read_input
	remote_options
}
clear
banner_main
