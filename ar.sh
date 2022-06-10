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
  	echo -e "$(if [[ $a > 0 ]]; then echo -e $FONTC" 1"$CE" - "$a; else echo " " ; fi)" "$(if [[ $h > 0 ]]; then echo -e $FONTC" 8"$CE" - "$h; else echo " " ; fi)" "$(if [[ $o > 0 ]]; then echo -e $FONTC"15"$CE" - "$o; else echo " " ; fi)"
  	echo -e "$(if [[ $b > 0 ]]; then echo -e $FONTC" 2"$CE" - "$b; else echo " " ; fi)" "$(if [[ $i > 0 ]]; then echo -e $FONTC" 9"$CE" - "$i; else echo " " ; fi)" "$(if [[ $p > 0 ]]; then echo -e $FONTC"16"$CE" - "$p; else echo " " ; fi)"
  	echo -e "$(if [[ $c > 0 ]]; then echo -e $FONTC" 3"$CE" - "$c; else echo " " ; fi)" "$(if [[ $j > 0 ]]; then echo -e $FONTC"10"$CE" - "$j; else echo " " ; fi)" "$(if [[ $q > 0 ]]; then echo -e $FONTC"17"$CE" - "$q; else echo " " ; fi)"
  	echo -e "$(if [[ $d > 0 ]]; then echo -e $FONTC" 4"$CE" - "$d; else echo " " ; fi)" "$(if [[ $k > 0 ]]; then echo -e $FONTC"11"$CE" - "$k; else echo " " ; fi)" "$(if [[ $r > 0 ]]; then echo -e $FONTC"18"$CE" - "$r; else echo " " ; fi)"
  	echo -e "$(if [[ $e > 0 ]]; then echo -e $FONTC" 5"$CE" - "$e; else echo " " ; fi)" "$(if [[ $l > 0 ]]; then echo -e $FONTC"12"$CE" - "$l; else echo " " ; fi)" "$(if [[ $s > 0 ]]; then echo -e $FONTC"19"$CE" - "$s; else echo " " ; fi)"
  	echo -e "$(if [[ $f > 0 ]]; then echo -e $FONTC" 6"$CE" - "$f; else echo " " ; fi)" "$(if [[ $m > 0 ]]; then echo -e $FONTC"13"$CE" - "$m; else echo " " ; fi)" "$BS" b"$CE- Go Back"
  	echo -e "$(if [[ $g > 0 ]]; then echo -e $FONTC" 7"$CE" - "$g; else echo " " ; fi)" "$(if [[ $n > 0 ]]; then echo -e $FONTC"14"$CE" - "$n; else echo " " ; fi)" "$BS" 0"$CE- Exit"
  	echo "Choose:"
    }
