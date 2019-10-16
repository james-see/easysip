
sudo apt-get update && sudo apt-get install -y gnupg2
wget http://deb.kamailio.org/kamailiodebkey.gpg
sudo apt-key add kamailiodebkey.gpg
sudo apt-get update
sudo apt update
sudo apt install mariadb-server
sudo apt install kamailio kamailio-mysql-modules
sudo cp /lib/systemd/system/kamailio.service /etc/systemd/system/kamailio.service
sudo sed -e '/After=network-online/ s/^#*/#/' -i /etc/systemd/system/kamailio.service
/usr/sbin/kamdbctl create
/usr/sbin/kamctl add dan secret