sudo apt update
sudo apt install imagemagick w3m-img neofetch -y
echo '#!/bin/bash' > /etc/profile.d/motd.sh
echo 'printf "\n"' >> /etc/profile.d/motd.sh
echo '/usr/bin/neofetch --ascii --source /usr/share/neofetch/ascii/distro/chakra' >> /etc/profile.d/motd.sh
sed -i 's/# info "Local IP" local_ip/info "Local IP" local_ip/g' /etc/neofetch/config.conf
sed -i 's/# info "Public IP" public_ip/info "Public IP" public_ip/g' /etc/neofetch/config.conf
sed -i 's/# info "Users" users/info "Users" users/g' /etc/neofetch/config.conf
wget https://raw.githubusercontent.com/viva9grup/collection/main/motd -O /etc/motd
sed -i 's/PrintLastLog yes/PrintLastLog no/g' /etc/ssh/sshd_config
sed -i 's/PrintMotd no/PrintMotd yes/g' /etc/ssh/sshd_config
sed -i 's/.*#PrintLastLog.*/PrintLastLog no/g' /etc/ssh/sshd_config
sed -i 's/.*#PrintMotd.*/PrintMotd no/g' /etc/ssh/sshd_config
service ssh restart
