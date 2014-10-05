centos6.5(webサーバー)

依存: https://github.com/matsu-chara/an-centos-6.5

fluentd
elasticsearch
kibana

### demo用サイトの準備
sudo yum --enablerepo=remi,remi-php55 install -y php php-cli php-mcrypt
sudo git clone https://github.com/suzuken/gihyo-coffee-sample.git /var/www/html/gihyo-coffee-sample
sudo make -C /var/www/html/gihyo-coffee-sample install
sudo /etc/init.d/httpd restart
