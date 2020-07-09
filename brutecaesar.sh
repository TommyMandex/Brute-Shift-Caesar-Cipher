#!/usr/bin/env bash
# By Viloid
# Sec7or Team ~ Surabaya HackerLink

R='\e[0;31m'
W='\e[37m'
G='\e[32m'
O='\e[0;33m'
P='\e[0;35m'
N='\e[0m'

brute(){
local a
local geser
a=({a..z})
geser=()
geser+=("${a[@]:(-(26-$2))}")
geser+=("${a[@]:0:$(($2+1))}")
echo "$1" | tr '[:upper:]' '[:lower:]' | tr "${a[*]}" "${geser[*]}"
}

printf "\n# ${R} Brute Shift Caesar Cipher (CTF Helper Tool)${N}\n"
printf "# ${W} By Viloid (Sec7or Team ~ Surabaya Hacker Link)${N}\n"
printf "${O}\n"
read -p "[?] STRINGS : " str
printf "${N}+---------------------------------------\n";
printf "| Shift\t| Output \n";
printf "+---------------------------------------\n";
for i in {1..26};do
printf "|  ${P}$((26-i)) ${N}\t| ${G}$(brute "$str" $i)${N}\n";
done
printf "+---------------------------------------\n";
