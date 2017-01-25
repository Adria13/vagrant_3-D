sudo apt-get update

apt-get -y install apache2

sudo rm -rf /var/www/index.html
sudo ln -s /home/proyecto/ /var/www/

sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password password root'
sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password_again password root'
sudo apt-get -y install mysql-server php5-mysql php5 libapache2-mod-php5 php5-mcrypt
sudo mysql_install_db
