yum update -y
clear
printf "\e[92mEnter Your hostname (example: test.anything.com): \033[0;33m"
read hostnya
hostnamectl set-hostname $hostnya
systemctl list-unit-files | grep NetworkManager
curl -o latest -L http://httpupdate.cpanel.net/latest && sh latest
printf '\e[0mYou can access WHM by visiting \e[0;32mhttp://'$(hostname -I | cut -d' ' -f1)'/whm\e[0m\n'
