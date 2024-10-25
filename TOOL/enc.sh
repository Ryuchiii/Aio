#!/bin/bash
RED='\033[0;31m'
NC='\e[0m'
gray="\e[1;30m"
PURPLE='\033[0;35m'
Blue="\033[1;36m"
GREEN='\033[0;32m'
clear
echo -e "\e[0m—————————————————————————————————————————————————\e[0m"
echo -e "      $PURPLE      TOOLS ENCRYPT TEKIRO         $NC"
echo -e "\e[0m—————————————————————————————————————————————————\e[0m"
echo ""
echo -e "  ${Blue}    01.)${NC} ☞ Encrypt$NC"
echo -e "  ${Blue}    00.)${NC} ☞ Exit$NC"
echo ""
echo -e "\e[0m ———————————————————————————————————————————————\e[0m"
echo -e " $PURPLE  Upload Your File To /ROOT/SHC/ Then Press 01          $NC"
echo -e "        $PURPLE        To Encrypt $NC"
echo -e "\e[0m ———————————————————————————————————————————————\e[0m"
echo -e ""
read -p " Select menu :  "  opt
echo -e   ""
case $opt in
01 | 1) clear ; shco ;;
00 | 0) clear ; menu ;;
*) clear ; enc ;;
esac