
# Install dependencies
sudo yum update
sudo yum install -y httpd httpd-tools mod_ssl php-gd php-mbstring php-dom \
	 git nano unzip zip lynx php-mbstring

# Install apache
sudo amazon-linux-extras install -y php7.2

## Download and configure composer
sudo php -r "copy('https://getcomposer.org/composer-1.phar', '/usr/bin/composer');"
sudo chmod +x /usr/bin/composer

# clone the repository 
cd ~
git clone https://github.com/camilovietnam/eccube
sudo mv ~/eccube/ec2 /var/www/html/ec2

## Install eccube dependencies
cd /var/www/html/ec2
composer install

# Open folder permissions
sudo chmod -R 777 /var/www/html/ec2

# Change the Document root to the ec2 folder
sudo sed -i 's/DocumentRoot "\/var\/www\/html"/DocumentRoot "\/var\/www\/html\/ec2\/html"/g' \
        /etc/httpd/conf/httpd.conf

sudo rm -rf ~/eccube

# Start apache
sudo systemctl enable httpd
sudo systemctl start httpd
