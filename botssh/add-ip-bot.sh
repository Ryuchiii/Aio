#!/bin/bash

TOKEN="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"
today=`date -d "0 days" +"%Y-%m-%d"`
git clone https://github.com/myridwan/izinvps.git /root/izinvps/ &> /dev/null
clear

echo -e ""
read -p "Input ipvps    :   " ipqu
CLIENT_EXISTS=$(grep -w $ipqu /root/izinvps/ip | wc -l)

if [[ ${CLIENT_EXISTS} == '1' ]]; then
    echo "ipqu Already Exist !"
    rm -rf /root/izinvps
    exit 0
fi

echo -e ""
read -p "Input username : " name
echo -e ""

clear
echo -e "Pilih waktu expired:"
echo -e "1. 30 days"
echo -e "2. 60 days"
echo -e "3. 90 days"
echo -e "4. Lifetime"

read -p "Masukkan nomor pilihan: " exp_option

case $exp_option in
    1)
        exp="30"
        ;;
    2)
        exp="60"
        ;;
    3)
        exp="90"
        ;;
    4)
        exp="360"
        ;;
    *)
        echo "Invalid option. Exiting."
        exit 1
        ;;
esac

exp2=`date -d "${exp} days" +"%Y-%m-%d"`
echo "### ${name} ${exp2} ${ipqu}" >> /root/izinvps/ip

cd /root/backend
git config --global user.email "alnurridwan112@gmail.com" &> /dev/null
git config --global user.name "myridwan" &> /dev/null
rm -rf .git &> /dev/null
git init &> /dev/null
git add . &> /dev/null
git commit -m register &> /dev/null
git branch -M ipuk &> /dev/null
git remote add origin https://github.com/myridwan/izinvps
git push -f https://${TOKEN}@github.com/myridwan/izinvps.git &> /dev/null
rm -rf /root/izinvps
clear
