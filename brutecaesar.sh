#!/bin/bash
# Brute Shift Caesar Cipher
# Coded by Versailles
# Sec7or ~ Surabaya Hacker Link

RED='\033[0;31m'
WHITE='\e[37m'
GREEN='\e[32m'
ORANGE='\033[0;33m'
PURPLE='\033[0;35m'
NC='\033[0m'

brute(){
local a                                                        
local geser                                                    
a=({a..z})
geser=()
geser+=("${a[@]:(-(26-$2))}")                                  
geser+=("${a[@]:0:$(($2+1))}")
echo "$1" | tr '[:upper:]' '[:lower:]' | tr "${a[*]}" "${geser[*]}"                                                           }

printf "${RED}"
figlet -f big "BruteCaesar"
printf "${WHITE}# Brute Shift Caesar Cipher (CTF Tool Helper)\n"
printf "# By Versailles\n"
printf "# Sec7or Team ~ Surabaya Hacker Link${NC}\n"
printf "${ORANGE}\n"
read -p "[!] STRINGS : " str
printf "${NC}+---------------------------------------\n";
printf "| Shift\t| Output \n";
printf "+---------------------------------------\n";
for i in {1..25};do
printf "|  ${PURPLE}$((26-i)) ${NC}\t| ${GREEN}$(brute $str $i)${NC}\n";
done
printf "+---------------------------------------\n";
