!/bin/bash
# ------------------------------------------------------------------
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

#setting frequent stings
	YNYES="("$YS"y"$CE"/"$YS"n"$CE")("$YS"Enter"$CE"=yes)"
	YNNO="("$YS"y"$CE"/"$YS"n"$CE")("$YS"Enter"$CE"=no)"
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
