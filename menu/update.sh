#wget https://github.com/${GitUser}/
GitUser="https://aio.tekirovpn.my.id/"
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi
echo ""
version=$(cat /home/ver)
ver=$( curl https://aio.tekirovpn.my.id/version )
clear
# LINE COLOUR
line=$(cat /etc/line)
# TEXT COLOUR BELOW
below=$(cat /etc/below)
# BACKGROUND TEXT COLOUR
back_text=$(cat /etc/back)
# NUMBER COLOUR
number=$(cat /etc/number)
# TEXT ON BOX COLOUR
box=$(cat /etc/box)
# CEK UPDATE
Green_font_prefix="\033[32m" && Red_font_prefix="\033[31m" && Green_background_prefix="\033[42;37m" && Red_background_prefix="\033[41;37m" && Font_color_suffix="\033[0m"
Info1="${Green_font_prefix}($version)${Font_color_suffix}"
Info2="${Green_font_prefix}(LATEST VERSION)${Font_color_suffix}"
Error="Version ${Green_font_prefix}[$ver]${Font_color_suffix} available${Red_font_prefix}[Please Update]${Font_color_suffix}"
version=$(cat /home/ver)
new_version=$( curl https://aio.tekirovpn.my.id/newversion | grep $version )
#Status Version
if [ $version = $new_version ]; then
sts="${Info2}"
else
sts="${Error}"
fi
clear
echo ""
echo -e "   \e[$line--------------------------------------------------------\e[m"
echo -e "              Check NEW UPDATE       "
echo -e "   \e[$line--------------------------------------------------------\e[m"
case $option2 in
1)
version=$(cat /home/ver)
new_version=$( curl https://aio.tekirovpn.my.id/newversion | grep $version )
if [ $version = $new_version ]; then
clear
echo ""
echo -e "\e[1;31mChecking New Version, Please Wait...!\e[m"
sleep 3
clear
echo -e "\e[1;31mUpdate Not Available\e[m"
echo ""
clear
sleep 1
echo -e "\e[1;36mYou Have The Latest Version\e[m"
echo -e "\e[1;31mThankyou.\e[0m"
sleep 2
update
fi
clear
echo -e "\e[1;31mUpdate Available Now..\e[m"
echo -e ""
sleep 2
echo -e "\e[1;36mStart Update For New Version, Please Wait..\e[m"
sleep 2
clear
echo -e "\e[0;32mGetting New Version Script..\e[0m"
sleep 1
echo ""
# UPDATE RUN-UPDATE
cd /usr/bin
wget -O run-update "https://aio.tekirovpn.my.id/update.sh"
chmod +x run-update
# RUN UPDATE
echo ""
clear
echo -e "\e[0;32mPlease Wait...!\e[0m"
sleep 6
clear
echo ""
echo -e "\e[0;32mNew Version Downloading started!\e[0m"
sleep 2
cd /usr/bin
wget -O /usr/bin/menu "https://aio.tekirovpn.my.id/menu/menu.sh"
wget -O /usr/bin/m-vmess "https://aio.tekirovpn.my.id/menu/m-vmess.sh"
wget -O /usr/bin/m-vless "https://aio.tekirovpn.my.id/menu/m-vless.sh"
wget -O /usr/bin/running "https://aio.tekirovpn.my.id/menu/running.sh"
wget -O /usr/bin/clearcache "https://aio.tekirovpn.my.id/menu/clearcache.sh"
wget -O /usr/bin/m-ssws "https://aio.tekirovpn.my.id/menu/m-ssws.sh"
wget -O /usr/bin/m-trojan "https://aio.tekirovpn.my.id/menu/m-trojan.sh"
wget -O /usr/bin/backup "https://aio.tekirovpn.my.id/menu/backup.sh"
wget -O /usr/bin/restore "https://aio.tekirovpn.my.id/menu/restore.sh"
wget -O /usr/bin/update "https://aio.tekirovpn.my.id/menu/update.sh"
wget -O /usr/bin/m-sshovpn "https://aio.tekirovpn.my.id/menu/m-sshovpn.sh"
wget -O /usr/bin/usernew "https://aio.tekirovpn.my.id/ssh/usernew.sh"
wget -O /usr/bin/trial "https://aio.tekirovpn.my.id/ssh/trial.sh"
wget -O /usr/bin/renew "https://aio.tekirovpn.my.id/ssh/renew.sh"
wget -O /usr/bin/hapus "https://aio.tekirovpn.my.id/ssh/hapus.sh"
wget -O /usr/bin/cek "https://aio.tekirovpn.my.id/ssh/cek.sh"
wget -O /usr/bin/member "https://aio.tekirovpn.my.id/ssh/member.sh"
wget -O /usr/bin/delete "https://aio.tekirovpn.my.id/ssh/delete.sh"
wget -O /usr/bin/autokill "https://aio.tekirovpn.my.id/ssh/autokill.sh"
wget -O /usr/bin/ceklim "https://aio.tekirovpn.my.id/ssh/ceklim.sh"
wget -O /usr/bin/tendang "https://aio.tekirovpn.my.id/ssh/tendang.sh"
wget -O /usr/bin/sshws "https://aio.tekirovpn.my.id/ssh/sshws.sh"
wget -O /usr/bin/m-system "https://aio.tekirovpn.my.id/menu/m-system.sh"
wget -O /usr/bin/m-domain "https://aio.tekirovpn.my.id/menu/m-domain.sh"
wget -O /usr/bin/add-host "https://aio.tekirovpn.my.id/ssh/add-host.sh"
#wget -O /usr/bin/port-change "https://aio.tekirovpn.my.id/port/port-change.sh"
wget -O /usr/bin/certv2ray "https://aio.tekirovpn.my.id/xray/certv2ray.sh"
#wget -O /usr/bin/m-webmin "https://aio.tekirovpn.my.id/menu/m-webmin.sh"
wget -O /usr/bin/speedtest "https://aio.tekirovpn.my.id/ssh/speedtest_cli.py"
#wget -O about "https://aio.tekirovpn.my.id/menu/about.sh"
wget -O /usr/bin/auto-reboot "https://aio.tekirovpn.my.id/menu/auto-reboot.sh"
wget -O /usr/bin/restart "https://aio.tekirovpn.my.id/menu/restart.sh"
wget -O /usr/bin/bw "https://aio.tekirovpn.my.id/menu/bw.sh"
wget -O /usr/bin/m-tcp "https://aio.tekirovpn.my.id/menu/tcp.sh"
#wget -O port-ssl "https://aio.tekirovpn.my.id/port/port-ssl.sh"
#wget -O port-ovpn "https://aio.tekirovpn.my.id/port/port-ovpn.sh"
#wget -O port-tr "https://aio.tekirovpn.my.id/port/port-tr.sh"
wget -O /usr/bin/xp "https://aio.tekirovpn.my.id/ssh/xp.sh"
#wget -O asu "https://aio.tekirovpn.my.id/asu.sh"
wget -O /usr/bin/sshws "https://aio.tekirovpn.my.id/ssh/sshws.sh"
chmod +x /usr/bin/menu
chmod +x /usr/bin/m-vmess
chmod +x /usr/bin/m-vless
chmod +x /usr/bin/running
chmod +x /usr/bin/clearcache
chmod +x /usr/bin/m-ssws
chmod +x /usr/bin/m-trojan
chmod +x /usr/bin/backup
chmod +x /usr/bin/restore
chmod +x /usr/bin/update
chmod +x /usr/bin/m-sshovpn
chmod +x /usr/bin/usernew
chmod +x /usr/bin/trial
chmod +x /usr/bin/renew
chmod +x /usr/bin/hapus
chmod +x /usr/bin/cek
chmod +x /usr/bin/member
chmod +x /usr/bin/delete
chmod +x /usr/bin/autokill
chmod +x /usr/bin/ceklim
chmod +x /usr/bin/tendang
chmod +x /usr/bin/sshws
chmod +x /usr/bin/m-system
chmod +x /usr/bin/m-domain
chmod +x /usr/bin/add-host
#chmod +x port-change
chmod +x /usr/bin/certv2ray
#chmod +x m-webmin
chmod +x /usr/bin/speedtest
#chmod +x about
chmod +x /usr/bin/auto-reboot
chmod +x /usr/bin/restart
chmod +x /usr/bin/bw
chmod +x /usr/bin/m-tcp
#chmod +x port-ssl
#chmod +x port-ovpn
#chmod +x port-tr
chmod +x /usr/bin/xp
#chmod +x asu
chmod +x /usr/bin/sshws
clear
echo -e ""
echo -e "\e[0;32mDownloaded successfully!\e[0m"
echo ""
ver=$( curl https://aio.tekirovpn.my.id/version )
sleep 1
echo -e "\e[0;32mPatching New Update, Please Wait...\e[0m"
echo ""
sleep 2
echo -e "\e[0;32mPatching... OK!\e[0m"
sleep 1
echo ""
echo -e "\e[0;32mSucces Update Script For New Version\e[0m"
cd
echo "$ver" > /home/ver
rm -f update.sh
clear
echo ""
echo -e "\033[0;34m----------------------------------------\033[0m"
echo -e "\E[44;1;39m            SCRIPT UPDATED              \E[0m"
echo -e "\033[0;34m----------------------------------------\033[0m"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
;;
x)
clear
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
;;
esac
