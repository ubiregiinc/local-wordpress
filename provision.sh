apt-get update
apt-get install -y apache2
apt-get install -y php5 php5-mysql
apt-get install -y php5-gd
apt-get install -y vim
apt-get install -y avahi-daemon

cp /vagrant/wordpress.conf /etc/apache2/sites-available/wordpress
mkdir -p /vagrant/log

a2dissite default
a2ensite wordpress
a2enmod rewrite

cp /vagrant/httpd.conf /etc/apache2/httpd.conf

service apache2 restart