# Beware that on some FTP servers, ASCII support allows a denial of service
# attack (DoS) via the command "SIZE /big/file" in ASCII mode. vsftpd
# predicted this attack and has always been safe, reporting the size of the
# raw file.
# ASCII mangling is a horrible feature of the protocol.
#ascii_upload_enable=YES
#ascii_download_enable=YES
#
# You may fully customise the login banner string:
#ftpd_banner=Welcome to blah FTP service.
#
# You may specify a file of disallowed anonymous e-mail addresses. Apparently
# useful for combatting certain DoS attacks.
#deny_email_enable=YES
# (default follows)
#banned_email_file=/etc/vsftpd.banned_emails
#
# You may restrict local users to their home directories.  See the FAQ for
# the possible risks in this before using chroot_local_user or
# chroot_list_enable below.
#sudo echo "# Example config file /etc/vsftpd.conf
#
# The default compiled in settings are fairly paranoid. This sample file
# loosens things up a bit, to make the ftp daemon more usable.
# Please see vsftpd.conf.5 for all compiled in defaults.
#
# READ THIS: This example file is NOT an exhaustive list of vsftpd options.
# Please read the vsftpd.conf.5 manual page to get a full idea of vsftpd's
# capabilities.
#
#
# Run standalone?  vsftpd can run either from an inetd or as a standalone
# daemon started from an initscript.
listen=YES
#
# This directive enables listening on IPv6 sockets. By default, listening
# on the IPv6 "any" address (::) will accept connections from both IPv6
# and IPv4 clients. It is not necessary to listen on *both* IPv4 and IPv6
# sockets. If you want that (perhaps because you want to listen on specific
# addresses) then you must run two copies of vsftpd with two configuration
# files.
listen_ipv6=NO
#
# Allow anonymous FTP? (Disabled by default).
anonymous_enable=NO
#
# Uncomment this to allow local users to log in.
local_enable=YES
#
# Uncomment this to enable any form of FTP write command.
write_enable=YES
#
# Default umask for local users is 077. You may wish to change this to 022,
# if your users expect that (022 is used by most other ftpd's)
local_umask=022
#
# Uncomment this to allow the anonymous FTP user to upload files. This only
# has an effect if the above global write enable is activated. Also, you will
# obviously need to create a directory writable by the FTP user.
#anon_upload_enable=YES
#
# Uncomment this if you want the anonymous FTP user to be able to create
# new directories.
#anon_mkdir_write_enable=YES
#
# Activate directory messages - messages given to remote users when they
# go into a certain directory.
dirmessage_enable=YES
#
# If enabled, vsftpd will display directory listings with the time
# in  your  local  time  zone.  The default is to display GMT. The
# times returned by the MDTM FTP command are also affected by this
# option.
use_localtime=YES
#
# Activate logging of uploads/downloads.
xferlog_enable=YES
#
# Make sure PORT transfer connections originate from port 20 (ftp-data).
connect_from_port_20=YES
#
# If you want, you can arrange for uploaded anonymous files to be owned by
# a different user. Note! Using "root" for uploaded files is not
# recommended!
#chown_uploads=YES
#chown_username=whoever
#
# You may override where the log file goes if you like. The default is shown
# below.
#xferlog_file=/var/log/vsftpd.log
#
# If you want, you can have your log file in standard ftpd xferlog format.
# Note that the default log file location is /var/log/xferlog in this case.
xferlog_std_format=YES
#
# You may change the default value for timing out an idle session.
#idle_session_timeout=600
#
# You may change the default value for timing out a data connection.
#data_connection_timeout=120
#
# It is recommended that you define on your system a unique user which the
# ftp server can use as a totally isolated and unprivileged user.
#nopriv_user=ftpsecure
#
# Enable this and the server will recognise asynchronous ABOR requests. Not
# recommended for security (the code is non-trivial). Not enabling it,
# however, may confuse older FTP clients.
#async_abor_enable=YES
#
# By default the server will pretend to allow ASCII mode but in fact ignore
# the request. Turn on the below options to have the server actually do ASCII
# mangling on files when in ASCII mode.
# Beware that on some FTP servers, ASCII support allows a denial of service
# attack (DoS) via the command "SIZE /big/file" in ASCII mode. vsftpd
# predicted this attack and has always been safe, reporting the size of the
# raw file.
# ASCII mangling is a horrible feature of the protocol.
#ascii_upload_enable=YES
#ascii_download_enable=YES
#
# You may fully customise the login banner string:
#ftpd_banner=Welcome to blah FTP service.
#
# You may specify a file of disallowed anonymous e-mail addresses. Apparently
# useful for combatting certain DoS attacks.
#deny_email_enable=YES
# (default follows)
#banned_email_file=/etc/vsftpd.banned_emails
#
# You may restrict local users to their home directories.  See the FAQ for
# the possible risks in this before using chroot_local_user or
# chroot_list_enable below.
#deactivate! 1 Рекомедуется разкомментировать, а 2 закомментироватьdeactivate!
#Первая строчка указывает, что нужно разместить пользователя 
#в изолированном домашнем каталоге, 
#а вторая, что ему можно разрешить запись в этот каталог.
#chroot_local_user=YES
allow_writeable_chroot=YES
# You may specify an explicit list of local users to chroot() to their home
# directory. If chroot_local_user is YES, then this list becomes a list of
# users to NOT chroot().
# (Warning! chroot'ing can be very dangerous. If using chroot, make sure that
# the user does not have write access to the top level directory within the
# chroot)
#chroot_local_user=YES
#chroot_list_enable=YES
# (default follows)
#chroot_list_file=/etc/vsftpd.chroot_list
#
# You may activate the "-R" option to the builtin ls. This is disabled by
# default to avoid remote users being able to cause excessive I/O on large
# sites. However, some broken FTP clients such as "ncftp" and "mirror" assume
# the presence of the "-R" option, so there is a strong case for enabling it.
#ls_recurse_enable=YES
#
# Customization
#
# Some of vsftpd's settings don't fit the filesystem layout by
# default.
#
# This option should be the name of a directory which is empty.  Also, the
# directory should not be writable by the ftp user. This directory is used
# as a secure chroot() jail at times vsftpd does not require filesystem
# access.
secure_chroot_dir=/var/run/vsftpd/empty
#
# This string is the name of the PAM service vsftpd will use.
pam_service_name=vsftpd
#
# This option specifies the location of the RSA certificate to use for SSL
# encrypted connections.
#rsa_cert_file=/etc/ssl/certs/ssl-cert-snakeoil.pem
#rsa_private_key_file=/etc/ssl/private/ssl-cert-snakeoil.key
#ssl_enable=NO
#
ssl_enable=YES
ssl_tlsv1=YES
ssl_sslv2=NO
ssl_sslv3=NO
rsa_cert_file=/etc/ssl/private/vsftpd.pem
rsa_private_key_file=/etc/ssl/private/vsftpd.key
allow_anon_ssl=NO
force_local_data_ssl=YES
force_local_logins_ssl=YES
ssl_ciphers=HIGH
pasv_min_port=40000
pasv_max_port=50000
#
# Uncomment this to indicate that vsftpd use a utf8 filesystem.
utf8_filesystem=YES
#
#
userlist_enable=YES
userlist_file=/etc/vsftpd.userlist
userlist_deny=NO
#Первая из них добавляет переменную $USER, 
#в которой содержится имя пользователя, 
#а вторая задаёт корневую папку для каждого пользователя. 
#user_sub_token=$USER
#local_root=/home/$USER/ftp
#local_root=/home/radif
> /etc/vsftpd.conf
" > /etc/vsftpd.conf[A! 1 Рекомедуется разкомментировать, а 2 закомментироватьsudo echo "# Example config file /etc/vsftpd.conf
#
# The default compiled in settings are fairly paranoid. This sample file
# loosens things up a bit, to make the ftp daemon more usable.
# Please see vsftpd.conf.5 for all compiled in defaults.
#
# READ THIS: This example file is NOT an exhaustive list of vsftpd options.
# Please read the vsftpd.conf.5 manual page to get a full idea of vsftpd's
# capabilities.
#
#
# Run standalone?  vsftpd can run either from an inetd or as a standalone
# daemon started from an initscript.
listen=YES
#
# This directive enables listening on IPv6 sockets. By default, listening
# on the IPv6 "any" address (::) will accept connections from both IPv6
# and IPv4 clients. It is not necessary to listen on *both* IPv4 and IPv6
# sockets. If you want that (perhaps because you want to listen on specific
# addresses) then you must run two copies of vsftpd with two configuration
# files.
listen_ipv6=NO
#
# Allow anonymous FTP? (Disabled by default).
anonymous_enable=NO
#
# Uncomment this to allow local users to log in.
local_enable=YES
#
# Uncomment this to enable any form of FTP write command.
write_enable=YES
#
# Default umask for local users is 077. You may wish to change this to 022,
# if your users expect that (022 is used by most other ftpd's)
local_umask=022
#
# Uncomment this to allow the anonymous FTP user to upload files. This only
# has an effect if the above global write enable is activated. Also, you will
# obviously need to create a directory writable by the FTP user.
#anon_upload_enable=YES
#
# Uncomment this if you want the anonymous FTP user to be able to create
# new directories.
#anon_mkdir_write_enable=YES
#
# Activate directory messages - messages given to remote users when they
# go into a certain directory.
dirmessage_enable=YES
#
# If enabled, vsftpd will display directory listings with the time
# in  your  local  time  zone.  The default is to display GMT. The
# times returned by the MDTM FTP command are also affected by this
# option.
use_localtime=YES
#
# Activate logging of uploads/downloads.
xferlog_enable=YES
#
# Make sure PORT transfer connections originate from port 20 (ftp-data).
connect_from_port_20=YES
#
# If you want, you can arrange for uploaded anonymous files to be owned by
# a different user. Note! Using "root" for uploaded files is not
# recommended!
#chown_uploads=YES
#chown_username=whoever
#
# You may override where the log file goes if you like. The default is shown
# below.
#xferlog_file=/var/log/vsftpd.log
#
# If you want, you can have your log file in standard ftpd xferlog format.
# Note that the default log file location is /var/log/xferlog in this case.
xferlog_std_format=YES
#
# You may change the default value for timing out an idle session.
#idle_session_timeout=600
#
# You may change the default value for timing out a data connection.
#data_connection_timeout=120
#
# It is recommended that you define on your system a unique user which the
# ftp server can use as a totally isolated and unprivileged user.
#nopriv_user=ftpsecure
#
# Enable this and the server will recognise asynchronous ABOR requests. Not
# recommended for security (the code is non-trivial). Not enabling it,
# however, may confuse older FTP clients.
#async_abor_enable=YES
#
# By default the server will pretend to allow ASCII mode but in fact ignore
# the request. Turn on the below options to have the server actually do ASCII
# mangling on files when in ASCII mode.
# Beware that on some FTP servers, ASCII support allows a denial of service
# attack (DoS) via the command "SIZE /big/file" in ASCII mode. vsftpd
# predicted this attack and has always been safe, reporting the size of the
# raw file.
# ASCII mangling is a horrible feature of the protocol.
#ascii_upload_enable=YES
#ascii_download_enable=YES
#
# You may fully customise the login banner string:
#ftpd_banner=Welcome to blah FTP service.
#
# You may specify a file of disallowed anonymous e-mail addresses. Apparently
# useful for combatting certain DoS attacks.
#deny_email_enable=YES
# (default follows)
#banned_email_file=/etc/vsftpd.banned_emails
#
# You may restrict local users to their home directories.  See the FAQ for
# the possible risks in this before using chroot_local_user or
# chroot_list_enable below.
#deactivate! 1 Рекомедуется разкомментировать, а 2 закомментироватьdeactivate!
#Первая строчка указывает, что нужно разместить пользователя 
#в изолированном домашнем каталоге, 
#а вторая, что ему можно разрешить запись в этот каталог.
#chroot_local_user=YES
allow_writeable_chroot=YES
# You may specify an explicit list of local users to chroot() to their home
# directory. If chroot_local_user is YES, then this list becomes a list of
# users to NOT chroot().
# (Warning! chroot'ing can be very dangerous. If using chroot, make sure that
# the user does not have write access to the top level directory within the
# chroot)
#chroot_local_user=YES
#chroot_list_enable=YES
# (default follows)
#chroot_list_file=/etc/vsftpd.chroot_list
#
# You may activate the "-R" option to the builtin ls. This is disabled by
# default to avoid remote users being able to cause excessive I/O on large
# sites. However, some broken FTP clients such as "ncftp" and "mirror" assume
# the presence of the "-R" option, so there is a strong case for enabling it.
#ls_recurse_enable=YES
#
# Customization
#
# Some of vsftpd's settings don't fit the filesystem layout by
# default.
#
# This option should be the name of a directory which is empty.  Also, the
# directory should not be writable by the ftp user. This directory is used
# as a secure chroot() jail at times vsftpd does not require filesystem
# access.
secure_chroot_dir=/var/run/vsftpd/empty
#
# This string is the name of the PAM service vsftpd will use.
pam_service_name=vsftpd
#
# This option specifies the location of the RSA certificate to use for SSL
# encrypted connections.
#rsa_cert_file=/etc/ssl/certs/ssl-cert-snakeoil.pem
#rsa_private_key_file=/etc/ssl/private/ssl-cert-snakeoil.key
#ssl_enable=NO
#
ssl_enable=YES
ssl_tlsv1=YES
ssl_sslv2=NO
ssl_sslv3=NO
rsa_cert_file=/etc/ssl/private/vsftpd.pem
rsa_private_key_file=/etc/ssl/private/vsftpd.key
allow_anon_ssl=NO
force_local_data_ssl=YES
force_local_logins_ssl=YES
ssl_ciphers=HIGH
pasv_min_port=40000
pasv_max_port=50000
#
# Uncomment this to indicate that vsftpd use a utf8 filesystem.
utf8_filesystem=YES
#
#
userlist_enable=YES
userlist_file=/etc/vsftpd.userlist
userlist_deny=NO
#Первая из них добавляет переменную $USER, 
#в которой содержится имя пользователя, 
#а вторая задаёт корневую папку для каждого пользователя. 
#user_sub_token=$USER
#local_root=/home/$USER/ftp
#local_root=/home/radif
> /etc/vsftpd.conf
" > /etc/vsftpd.conf[A!
#Первая строчка указывает, что нужно разместить пользователя 
#в изолированном домашнем каталоге, 
#а вторая, что ему можно разрешить запись в этот каталог.
#chroot_local_user=YES
allow_writeable_chroot=YES
# You may specify an explicit list of local users to chroot() to their home
# directory. If chroot_local_user is YES, then this list becomes a list of
# users to NOT chroot().
# (Warning! chroot'ing can be very dangerous. If using chroot, make sure that
# the user does not have write access to the top level directory within the
# chroot)
#chroot_local_user=YES
#chroot_list_enable=YES
# (default follows)
#chroot_list_file=/etc/vsftpd.chroot_list
#
# You may activate the "-R" option to the builtin ls. This is disabled by
# default to avoid remote users being able to cause excessive I/O on large
# sites. However, some broken FTP clients such as "ncftp" and "mirror" assume
# the presence of the "-R" option, so there is a strong case for enabling it.
#ls_recurse_enable=YES
#
# Customization
#
# Some of vsftpd's settings don't fit the filesystem layout by
# default.
#
# This option should be the name of a directory which is empty.  Also, the
# directory should not be writable by the ftp user. This directory is used
# as a secure chroot() jail at times vsftpd does not require filesystem
# access.
secure_chroot_dir=/var/run/vsftpd/empty
#
# This string is the name of the PAM service vsftpd will use.
pam_service_name=vsftpd
#
# This option specifies the location of the RSA certificate to use for SSL
# encrypted connections.
#rsa_cert_file=/etc/ssl/certs/ssl-cert-snakeoil.pem
#rsa_private_key_file=/etc/ssl/private/ssl-cert-snakeoil.key
#ssl_enable=NO
#
ssl_enable=YES
ssl_tlsv1=YES
ssl_sslv2=NO
ssl_sslv3=NO
rsa_cert_file=/etc/ssl/private/vsftpd.pem
rsa_private_key_file=/etc/ssl/private/vsftpd.key
allow_anon_ssl=NO
force_local_data_ssl=YES
force_local_logins_ssl=YES
ssl_ciphers=HIGH
pasv_min_port=40000
pasv_max_port=50000
#
# Uncomment this to indicate that vsftpd use a utf8 filesystem.
utf8_filesystem=YES
#
#
userlist_enable=YES
userlist_file=/etc/vsftpd.userlist
userlist_deny=NO
#Первая из них добавляет переменную $USER, 
#в которой содержится имя пользователя, 
#а вторая задаёт корневую папку для каждого пользователя. 
#user_sub_token=$USER
#local_root=/home/$USER/ftp
#local_root=/home/radif
" > /etc/vsftpd.conf
su root
cd Django_optimization_tools
git pull
git status
sudo systemctl restart gunicorn_shop
sudo systemctl daemon-reload
sudo systemctl restart gunicorn_shop.socket gunicorn_shop.service
sudo nginx -t && sudo systemctl restart nginx
sudo systemctl restart gunicorn_shodp
nginx_restart
gunicorn_reastart
gunicorn_restart
nano .bashrc
gunicorn_shop_restart
nano .bashrc
nano .bashrc
nano .bashrc
nano .bashrc
try tr -d \\r .bashrc
sudo apt install try
sudo apt search try
  provides tide and current predictions
tr -d \\r .bashrc
django_project
shop_gunicorn_restart
ll /etc/nginx/sites_available
ll /etc/nginx/sites-available
shop_virt
pip freeze
shop_project
echo requirements.txt
pip install -r requirements.txt
shop_env
nano .bashrc
cd ..
cd ~
shop_env
nano .bashrc
shop_virt
shop_env
django upgrade
django update
pip django upgrade
pip django update
pip django install
pip freeze
pip install django
pip upgrade django
pip update django
pip 
pip install django update
pip freeze
django
python django update
/home/radif/Django_optimization_tools/myprojectenv/bin/python -m pip install --upgrade pip
pip install django --upgrade
pip -v
shop_env
pip freeze
shop_gunicorn_restart
pip freeze > requirements.txt
git status
rm requirements.txt
ll
cd_shop
pip freeze > requirements.txt
ll
git status
git add requiremets.txt
git add 'requiremets.txt'
git restore requiremets.txt
git add./requiremets.txt
git add ./requiremets.txt
git status
git add .
git commit -m 'req'
git push origin master
deactivate
cd_intex
git pull
intex_gunicorn_restart
nginx_restart
git pull
intex_gunicorn_restart
git pull
intex_gunicorn_restart
git pull
intex_gunicorn_restart
nginx_restart
cd static
cd ..
intex_gunicorn_restart
cd ...
cd ..
ll
cd  www
ll
cd JavaScriptProfessional
ll
cd radif-ilaltdinov
ll
npm install
nginx_restart
df
npm install
nginx_restart
bower install
npm install -g bower
sudo npm install -g bower
bower install
intex_gunicorn_restart
git add .
cd_intex
git add .
git commit -m 'upd'
git push origin master
git pull
cd static
ll
bower install
intex_gunicorn_restart
intex_settings
cd ..
cd www
ll
cd JavaScriptProfessional
git pull
ll
git commit -m '-'
git add .
git commit -m '-'
git pull
ll
git status
cd www
ll
cd JavaScriptProfessional/
ll
git status
cd ..
rm -rf JavaScriptProfessional
git clone https://github.com/silverforwings/JavaScriptProfessional
nginx_restart
cd JavaScriptProfessional/
ll
npm install
bower install
nginx_restart
intex_gunicorn_restart
ll /usr/bin
shop_settings
intex_settings
shop_settings
sudo mkdir /var/sec/
sudo nano /var/sec/geekshop__settings.json
cd_shop
git pull
cd /etc/nginx/sites-available
ll
sudo mv shop geekshop
ll
sudo ln -s geekshop /etc/nginx/sites-enabled
ll /etc/nginx/sites-enabled
sudo ln -s /etc/nginx/sites-availablegeekshop /etc/nginx/sites-enabled
ll /etc/nginx/sites-enabled
rm geekshop sites-available
sudo rm geekshop sites-available
sudo rm geekshop sites-availablegeekshop
ll /etc/nginx/sites-enabled
sudo rm -rf geekshop sites-availablegeekshop
ll /etc/nginx/sites-enabled
sudo rm -rf geekshop 
ll /etc/nginx/sites-enabled
ll
sudo rm -rf /etc/nginx/sites-available/sites-availablegeekshop
ll /etc/nginx/sites-enabled
sudo rm -rf /etc/nginx/sites-enabled/sites-availablegeekshop
ll /etc/nginx/sites-enabled
sudo rm -rf /etc/nginx/sites-enabled/shop
sudo rm -rf /etc/nginx/sites-enabled/geekshop
ll /etc/nginx/sites-enabled
ll
sudo cp Intex_Stroy geekshop
ll
sudo nano geekshop
shop_settings
cd_shop
nano geekshop/settings.py
shop_gunicorn_restart
nginx_restart
sudo ln -s /etc/nginx/sites-available/geekshop /etc/sites-enabled
shop_gunicorn_restart
nginx_restart
ll /etc/nginx/sites-enabled
ll /etc/nginx/sites-available
sudo ln -s /etc/nginx/sites-available/geekshop /etc/sites-enabled/
sudo ln -s /etc/nginx/sites-available/geekshop /etc/sites-enable/
sudo ln -s /etc/nginx/sites-available/geekshop /etc/nginx/sites-enabled/
shop_gunicorn_restart
nginx_restart
git pull
shop_env
pip install -r requirements.txt
shop_gunicorn_restart
nginx_restart
shop_gunicorn_restart
sudo nano /etc/sites-available/geekshop
sudo nano /etc/nginx/sites-available/geekshop
shop_gunicorn_restart
nginx_restart
nano ../.bashrc
sudo nano /etc/systemd/system/gunicorn_shop.service
shop_gunicorn_restart
sudo nano /etc/systemd/system/gunicorn_shop.service
sudo nano /etc/nginx/sites-available/geekshop
nginx_restart
sudo nano /etc/nginx/sites-available/geekshop
nginx_restart
geekshop_gunicorn_restart
nginx_retart
geekshop_gunicorn_restart
nginx_retart
nginx_restart
cd_geekshop
git add .
git commit -m "google auth allowed"
git push origin master
geekshop_gunicorn_restart
nginx_restart
geekshop_gunicorn_restart
git pull
geekshop_gunicorn_restart
git status
git pull
cd_geekshop
git pull
geekshop_gunicorn_restart
nginx_restart 
geekshop_gunicorn_restart
cd_geekshop
ll
git status
ll shop
git pull
rm -rs shop
rm -rf shop
ll
git status
geegshop_gunicorn_restart
geekshop_gunicorn_restart
ll
nginx_restart
git status
git pull
git add .
git commit -m "+"
git pull
ll
cp -r static ../static
cd ..
rm -rf Django_optimization_tools
ll
git clone https://github.com/silverforwings/Django_optimization_tools
rm -rf Django_optimization_tools/static
mv static Django_optimization_tools/static
ll
cd Django_optimization_tools/static
ll
cd ..
;;
ll
virtualenv myprojectenv
geekshop_env
pip install -r requirements.txt
geekshop_gunicorn_restart
nginx_restart
nano /var/sec/geekshop__setings.json
nano /var/sec/geekshop__seting.json
nano /var/sec/geekshop__settings.json
sudo nano /var/sec/geekshop__settings.json
cd_geekshop
git pull
geekshop_gunicorn_restart
git pull
geekshop_gunicorn_restart
git pull
geekshop_gunicorn_restart
git pull
geekshop_gunicorn_restart
cd static
npm install
geekshop_gunicorn_restart
cd ..
cd static
git pull
git status
git pull
geekshop_gunicorn_restart
cd_geekdhop
cd_geekshop
git pull
rm -rf db.sqlite3
git pull
geekshop_gunicorn_restart
git commit -m 'linux_settings'
git add .
git commit -m 'linux_settings'
git push origin master
rm db.sqlite3
git pull
cd static
npm install
cd ..
geekshop_gunicorn_restart
git pull
geekshop_gunicorn_restart
git pull
geekshop_gunicorn_restart
git pull
geekshop_gunicorn_restart
ip addr
cd /etc/netplan
ll
sudo nano 5-0*
sudo nano 50*
ip addr
ssh radif@192.168.43.11
ll /
ll
cd_geekshop
ll
rm -rf Django_optimization_tools
ll
ll ..
ll
git status
git pull
git status
ll
git pull
git status
git pull
ggeekshop_gunicorn_restart
geekshop_gunicorn_restart
sudo nano /etc/apt
sudo nano /etc/apt/source.list
ll /etc/apt
sudo nano /etc/apt/sources.list
geekshop_virt
geekshop_env
pip freeze
pip install psycopg2-binary
sudo nano /etc/nginx/sites-available/geekshop
git pull
rm json/dumps/mainapp.json
rm json/dumps/authapp.json
rm json/dumps/basketapp.json
rm json/dumps/ordersapp.json
git pull
nginx_restart
sudo nano /etc/nginx/sites-available/geekshop
pw
pd
df
alias geekshop_gunicorn_restart
geekshop_gunicorn_restart
sudo -u postgresql psql
sudo -u django psql
sudo -u postgres psql
cd Django_optimization_tools
runserver
geekshop_env
runserver
git pull
rm db.sqlite3
git pull
runserver
sudo nano /etc/nginx/sites-available/geekshop

sudo nano /etc/nginx/sites-available/geekshop
nginx_restart
runserver
sudo nano /etc/nginx/sites-available/geekshop
nginx_restart
sudo nano /etc/nginx/sites-available/geekshop
runserver
sudo nano /etc/nginx/sites-available/geekshop
runserver
migrate
python3 manage.py loaddata json/dumps/authapp.json
python3 manage.py loaddata json/dumps/mainapp.json
python3 manage.py loaddata json/dumps/basketapp.json
python3 manage.py loaddata json/dumps/basketapp.json 
python3 manage.py loaddata json/dumps/ordersapp.json 
runserver
geekshop_gunicorn_restart
nginx_restart
sudo nano /etc/nginx/sites-available/geekshop
git pull
ll
git pull
git status
git add .
git commit -m 'prod'
git push origin master
pip install django-debug-toolbar
pip install django-debug-toolbar-template-profiler
-m pip install --upgrade pip
pip install --upgrade pip
pip install -r requirements.txt
runserver
geekshop_gunicorn_restart
runserver
pytho manage.py collectstatic
python manage.py collectstatic
sudo python manage.py collectstatic
python manage.py collectstatic
geekshop_gunicorn_restart
nginx_restart
geekshop_gunicorn_restart
nginx_restart
geekshop_gunicorn_restart
nginx_restart
sudo nanp /etc/nginx/sites-available/geekshop
sudo nano /etc/nginx/sites-available/geekshop
nginx_restart
sudo nano /etc/nginx/sites-available/geekshop
geekshop_gunicorn_restart
sudo nano /etc/nginx/sites-available/geekshop
sudo apt-get install postgresql postgresql-contrib
sudo nano /etc/systemd/system/gunicorn_shop.service
sudo nano /etc/nginx/sites-available/geekshop
nginx_restart
sudo nano /etc/nginx/sites-available/geekshop
nginx_restart
sudo nano /etc/nginx/sites-available/geekshop
nginx_restart
geekshop_gunicorn_restart
sudo nano /etc/nginx/sites-available/geekshop
nginx_restart
ip addr
sudo apt install postgresql
sudo systemctl status postgresql
sudo nano /var/sec/geekshop__settings.json
cd_geekshop
geekshop_env
git status
git add .
it commit -m 'test'
git commit -m 'test'
git push origin master
geekshop_gunicorn_restart
htop
sudo nano /etc/nginx/sites-available/geekshop
y
sudo nano /etc/nginx/sites-available/geekshop
nginx_restart
sudo nano /etc/nginx/sites-available/geekshop
nginx_restart
geekshop_gunicorn_restart
geekshop_env
pip freeze
geekshop_gunicorn_restart
nginx_restart
sudo ps aux | grep postgres | grep -- -D
sudo nano /var/lib/postgresql/12/main -c config_file=/etc/postgresql/12/main/postgresql.conf
ll /var/lib/postgresql/12/main -c config_file=/etc/postgresql/12/main/postgresql.conf
ll /var/lib/postgresql/12/main -c config_file=/etc/postgresql/12/main/
sudo ls -ila /var/lib/postgresql/12/main -c config_file=/etc/postgresql/12/main/
sudo nano /var/lib/postgresql/12/main -c config_file=/etc/postgresql/12/main/postgresql.auto.conf
sudo ps aux | grep postgres | grep -- -D
sudo nano /etc/postgresql/12/main/postgresql.conf
sudo cp /etc/postgresql/12/main/postgresql.conf /home/radif
ll
sudo mv postgresql.conf /home/radif/Django_optimization_tools/linux_settings/etc/postgresql/12/main
sudo nano /db/pgsql/pg_hba.conf
ll /etc/postgresql/12/main/postgresql.conf
sudo -ila /etc/postgresql/12/main/postgresql.conf
sudo ls -ila /etc/postgresql/12/main/postgresql.conf
sudo ls -ila /etc/postgresql/12/main/
sudo nano /etc/postgresql/12/main/pg_hba.conf
sudo cp /etc/postgresql/12/main/pg_hba.conf /home/radif
systemctl restart postgresql
sudo cp pg_hba.conf /home/radif/Django_optimization_tools/linux_settings/etc/postgresql/12/main
sudo cp pg_hba.conf /home/radif/linux_settings/linux_settings/etc/postgresql/12/main
sudo cp pg_hba.conf /home/radif/linux_settings/etc/postgresql/12/main
ll
git clone https://github.com/silverforwings/linux_settings
cd linux_settings
git push origin master
gi add.
git add .
git commit -m 'postgreql remote access'
git push origin master
sudo nano /home/radif/linux_settings/etc/systemd/system
sudo nano /etc/systemd/system/ginicorn_shop.socket
sudo nano /etc/systemd/system/gunicorn_shop.socket
sudo nano /etc/systemd/system/gunicorn_shop.service
sudo nano /etc/systemd/system/gunicorn.service
sudo nano /etc/systemd/system/gunicorn.socket
git add .
git commit -m 'gunicorn settings'
git push origin master
sudo apt install graphviz
sudo apt install siege
sudo apt remove siege
cd Django_optimization_tools
geekshop_env
pip install -r requirements.txt
geekshop_gunicorn_restart
pip freeze
sudo apt install siege
siege -f /home/radif/Django_optimization_tools/load_testings/urls.txt -d1 -r29 -c1
siege -f /home/radif/Django_optimization_tools/load_testings/urls.txt -d1 -r3 -c1 --debug
siege -f /home/radif/Django_optimization_tools/load_testings/urls.txt -d1 -r3 -c1
siege -f /home/radif/Django_optimization_tools/load_testings/urls.txt -d1 -r20 -c1
geekshop_gunicorn_restart
siege -f /home/radif/Django_optimization_tools/load_testings/urls.txt -d1 -r20 -c1
siege -f /home/radif/Django_optimization_tools/load_testings/urls.txt -d1 -r15 -c1
siege -f /home/radif/Django_optimization_tools/load_testings/urls.txt -d1 -r20 -c1
siege -f /home/radif/Django_optimization_tools/load_testings/urls.txt -d1 -r20 -c1 --debug
siege -f /home/radif/Django_optimization_tools/load_testings/urls.txt -d1 -r10 -c1 
siege -f /home/radif/Django_optimization_tools/load_testings/urls.txt -d1 -r20 -c1 
siege -f /home/radif/Django_optimization_tools/load_testings/urls.txt -d1 -r2 -c1 --debug 
geekshop_gunicorn_restart
siege -f /home/radif/Django_optimization_tools/load_testings/urls.txt -d1 -r2 -c1 --debug 
siege -f /home/radif/Django_optimization_tools/load_testings/urls.txt -d1 -r3 -c1 --debug 
ll~
ll ~
sudo nano ~/.siege/siege.conf
siege -f /home/radif/Django_optimization_tools/load_testings/urls.txt -d0 -r20 -c1 
siege -f /home/radif/Django_optimization_tools/load_testings/urls.txt -d0 -r28 -c1 
siege -f /home/radif/Django_optimization_tools/load_testings/urls.txt -d0 -r28 -c1 --debug | less
siege -f /home/radif/Django_optimization_tools/load_testings/urls.txt -d0 -r28 -c1
siege -f /home/radif/Django_optimization_tools/load_testings/urls.txt -d0 -r25 -c50
sudo systemctl status gunicorn
sudo systemctl status gunicorn_shop
geekshop_gunicorn_restart
sysctl -a | grep net.core.somaxconn
sudo apt search siege
geekshop_env
cd Django_optimization_tools
pip install django-extensions
pip install pydotplus
sudo apt install siege
sudo nano ~/.siege/siege.conf
ll ~/.siege/
ll ~/
sudo apt install siege
siege -f /home/radif/Django_optimization_tools/load_testings/urls.txt -d1 -r29 -c1
siege -f /home/radif/Django_optimization_tools/load_testings/urls.txt -d0 -r25 -c50
siege -f -i /home/radif/Django_optimization_tools/load_testings/urls.txt -d0 -r50 -c50
siege -f -i /home/radif/Django_optimization_tools/load_testings/urls.txt -d0 -r10 -c50
cd_geekshop
git pull
rm authapp/models.py
rm geekshop/settings.py
rm requirements.txt
git pull
rm linux_settings/etc/postgresql/12/main/pg_hba.conf
rm linux_settings/etc/postgresql/12/main/postgresql.conf
rm -rf load_testings/all_urls.txt load_testings/geekshop_visualized.png load_testings/urls.txt load_testings/urls2.txt load_testings/urls3.txt
git pull
geekshop_env
pip install -r requirements.txt
geekshop_gunicorn_restart
siege -f /home/radif/Django_optimization_tools/load_testings/urls.txt -d0 -r25 -c50
siege -f /home/radif/Django_optimization_tools/load_testings/urls.txt -d0 -r5 -c50
siege -f /home/radif/Django_optimization_tools/load_testings/urls.txt -d0 -r5 -c10
siege -f /home/radif/Django_optimization_tools/load_testings/urls.txt -d0 -r5 -c5
siege -f /home/radif/Django_optimization_tools/load_testings/urls.txt -d0 -r5 -c10
siege -f /home/radif/Django_optimization_tools/load_testings/urls.txt -d0 -r5 -c5
siege -f -i /home/radif/Django_optimization_tools/load_testings/urls.txt -d0 -r5 -c5
siege -f /home/radif/Django_optimization_tools/load_testings/urls.txt -d0 -r5 -c5
siege -f -i /home/radif/Django_optimization_tools/load_testings/urls.txt -d0 -r5 -c1
sudo nano ~/.siege/siege.conf
siege -f -i /home/radif/Django_optimization_tools/load_testings/urls.txt -d0 -r5 -c1
sudo apt install memcached libmemcached-dev
pip install python-memcached
pip install -r requirements.txt
pip freeze
cd_geekshop
git pull
rm geekshop/settings.py
rm requirements.txt
git pull
geekshop_gunicorn_restart
git pull
geekshop_gunicorn_restart
siege -f /home/radif/Django_optimization_tools/load_testings/urls.txt -d0 -r5 -c10
geekshop_gunicorn_restart
nginx_restart
geekshop_gunicorn_restart
intex_gunicorn_restart
cd_geekshop
git pull
rm db.sqlite3
git pull
geekshop_gunicorn_restart
sudo nano /etc/nginx/radif
sudo nano /etc/nginx/sites-available/radif
nginx_restart
sudo nano /etc/nginx/sites-available/radif
nginx_restart
sudo nano /etc/nginx/sites-available/default
sudo nano /etc/nginx/sites-available/radif
sudo nano /etc/nginx/sites-available/shop
sudo nano /etc/nginx/sites-available/geekshop
sudo nano /etc/nginx/sites-available/Intex-Stroy
sudo nano /etc/nginx/sites-available/intex
ll /etc/nginx/sites-available/
sudo nano /etc/nginx/sites-available/Intex_Stroy
sudo nano /etc/nginx/sites-available/radif
nginx_restart
sudo nano /etc/nginx/sites-available/default
sudo nano /etc/nginx/sites-available/radif
nginx_restart
sudo nano /etc/nginx/sites-available/radif
geekshop_gunicorn_restart
sudo nano /etc/nginx/sites-available/radif
nginx_restart
sudo nano /etc/nginx/sites-available/radif
nginx_restart
sudo nano /etc/nginx/sites-available/radif
nginx_restart
sudo nano /etc/nginx/sites-available/radif
nginx_restart
sudo nano /etc/nginx/sites-available/radif
nginx_restart
sudo nano /etc/nginx/sites-available/radif
nginx_restart
sudo nano /etc/nginx/sites-available/Intex_Stroy
sudo nano /etc/nginx/sites-available/geekshop
sudo nano /etc/nginx/sites-available/radif
sudo nano /etc/nginx/sites-available/geekshop
sudo nano /etc/nginx/sites-available/radif
nginx_restart
sudo nano /etc/nginx/sites-available/radif
nginx_restart
sudo nano /etc/nginx/sites-available/radif
nginx_restart
sudo nano /etc/nginx/sites-available/radif
nginx_restart
sudo nano /etc/nginx/sites-available/radif
nginx_restart
sudo nano /etc/nginx/sites-available/radif
cd_geekshop
geekshop_env
sudo apt install memcached
sudo apt install libmemcached-dev
pip install python-memcached
sudo nano /etc/memcached.conf
sudo cp /etc/memcached.conf ~/linux_settings/etc
l
sudo systemctl restart memcached
ps aux | grep memcached
sudo nano /etc/memcached.conf
sudo systemctl restart memcached
ps aux | grep memcached
sudo cp /etc/memcached.conf ~/linux_settings/etc
sudo nano /etc/memcached.conf
sudo cp /etc/memcached.conf ~/linux_settings/etc
sudo systemctl restart memcached
ps aux | grep memcached
cd_geekshop
git pull
rm geekshop/settings.py
git pull
geekshop_gunicorn_restart
geekshop_env
pip install -r requirements.txt
geekshop_gunicorn_restart
siege -f -i /home/radif/Django_optimization_tools/load_testings/urls.txt -d0 -r5 -c5
siege -f /home/radif/Django_optimization_tools/load_testings/urls.txt -d0 -r5 -c5
cd ../linux_settings
git push origin master
git add .
git status
git commit -m 'siege, memcached'
git push origin master
sudo -u postgres psql
cd_geekshop
git  pull
geekshop_gunicorn_restart
ll
cd /
ll
cd /etc/nginx/sites-available
ll
cp radif pro-remont-otdelka.ru
sudo cp radif pro-remont-otdelka.ru
ll
nano pro-remont-otdelka.ru
sudo nano pro-remont-otdelka.ru
sudo certbot certonly -d pro-remont-otdelka.ru
ll
sudo nano pro-remont-otdelka.ru
cd //etc/letsencrypt/live
sudo cd /etc/letsencrypt/live
cd /etc/letsencrypt/live
cd /etc/letsencrypt/
ll
cd live
sudo cd live
sudo la -a live
sudo ls -a live
cd /etc/nginx/sites-available
ll
sudo nano pro-remont-otdelka.ru
nginx_restart
sudo certbot certonly -d pro-remont-otdelka.ru
sudo nano pro-remont-otdelka.ru
sudo nano radif.ru
sudo nano radif
ll
sudo nano Intex_Stroy
sudo nano pro-remont-otdelka.ru
nginx_restart
sudo certbot certonly -d pro-remont-otdelka.ru
ll
ls
ln
ln /etc/sites-available/pro-gidroizolyaciya.ru /etc/sites-enabled/pro-gidroizolyaciya.ru
ln /etc/sites-available/pro-gidroizolyaciya.ru /etc/sites-enable/pro-gidroizolyaciya.ru
ll ..
ln /etc/nginx/sites-available/pro-gidroizolyaciya.ru /etc/nginx/sites-enabled/pro-gidroizolyaciya.ru
ln /etc/nginx/sites-available/pro-remont-otdelka.ru /etc/nginx/sites-enabled/pro-remont-otdelka.ru
sudo ln /etc/nginx/sites-available/pro-remont-otdelka.ru /etc/nginx/sites-enabled/pro-remont-otdelka.ru
nginx_restart
sudo certbot certonly -d pro-remont-otdelka.ru
sudo certbot certonly --dry-run -d pro-remont-otdelka.ru
sudo nano radif
nginx_restart
sudo certbot certonly --dry-run -d pro-remont-otdelka.ru
ll
sudo nano default
sudo nano radif
sudo nano Intex_Stroy
sudo nano radif
nginx_restart
sudo nano radif
nginx_restart
sudo nano radif
nginx_restart
sudo nano radif
sudo nano Intex_Stroy
ll
sudo nano geekshop
sudo nano radif
sudo nano pro-remont-otdelka.ru
sudo nano radif
nginx_restart
sudo nano geekshop
sudo nano radif
nginx_restart
sudo certbot certonly --dry-run -d pro-remont-otdelka.ru
sudo nano radif
nginx_restart
sudo nano radif
nginx_restart
sudo nano radif
nginx_restart
sudo nano radif
nginx_restart
sudo certbot certonly --dry-run -d pro-remont-otdelka.ru
sudo nano pro-remont-otdelka.ru
sudo certbot certonly --dry-run -d pro-remont-otdelka.ru
sudo nano radif
nginx_restart
sudo nano radif
nginx_restart
sudo nano radif
nginx_restart
sudo certbot certonly --dry-run -d pro-remont-otdelka.ru
sudo nano radif
sudo nano pro-remont-otdelka.ru
sudo certbot certonly --dry-run -d pro-remont-otdelka.ru
nginx_restart
sudo certbot certonly --dry-run -d pro-remont-otdelka.ru

sudo nano pro-remont-otdelka.ru
nginx_restart
sudo nano pro-remont-otdelka.ru
sudo nano radif
ll /etc/letsencrypt/live/
sudo la -a /etc/letsencrypt/live/
sudo ls -a /etc/letsencrypt/live/
sudo nano pro-remont-otdelka.ru
nginx_restart
sudo certbot certonly  -d pro-remont-otdelka.ru
sudo nano pro-remont-otdelka.ru
nginx_restart
sudo nano pro-remont-otdelka.ru
cd /etc/nginx/sites-available
sudo nano pro-remont-otdelka.ru
nginx_restart
ll
cd Django_optimization_tools/
git status
git pull
django_gunicorn_restart
geekshop_gunicorn_restart
cd www
ll
cd JavaScriptProfessional
ll
npm i
nginx_restart
bower i
nginx_restart
ll
sudo crontab -e

sudo certbot certonly -d radif.ru -d p
sudo certbot certonly --dry-run -d radif.ru
nginx_restart
sudo certbot certonly --dry-run -d radif.ru
Saving debug log to /var/log/letsencrypt/letsencrypt.log
Plugins selected: Authenticator webroot, Installer None
Cert is due for renewal, auto-renewing...
Renewing an existing certificate
Performing the following challenges:
http-01 challenge for radif.ru
Using the webroot path /var/www/html for all unmatched domains.
Waiting for verification...
Challenge failed for domain radif.ru
http-01 challenge for radif.ru
Cleaning up challenges
Running post-hook command: service nginx reload
Some challenges have failed.
IMPORTANT NOTES:
cd /etc/nginx
ll
cd acme
cd sites-available
ll
nano radif
nano pro-remont-otdelka.ru
nano radif
nano pro-remont-otdelka.ru
nano radif
sudo nano radif
nginx_restart 
sudo nano radif
nginx_restart 
sudo certbot certonly --dry-run -d radif.ru
sudo certbot certonly -d radif.ru
nano /var/log/letsencrypt
sudo nano /var/log/letsencrypt
cd /var/log/letsencrypt
ll
sudo nano radif
cd /var/log/letsencrypt
sudo cd /var/log/letsencrypt
sudo nano radif
nginx_restartu
sudo nano radif
nginx_restart
sudo certbot certonly --dry-run -d radif.ru
sudo nano radif
ll
sudo nano geekshop
sudo nano radif
nginx_restart
sudo certbot certonly --dry-run -d radif.ru
sudo nano radif
nginx_restart
sudo certbot certonly --dry-run -d radif.ru
sudo nano radif
nginx_restart
sudo certbot certonly --dry-run -d radif.ru
sudo certbot certonly -d radif.ru
sudo nano radif
nginx_restart
sudo nano radif
nginx_restart
sudo certbot certonly --dry-run -d radif.ru
ll
sudo nano Intex_Stroy
nginx_restart
sudo certbot certonly --dry-run -d pro-gidroizolyaciya.ru
sudo nano Intex_Stroy
nginx_restart
sudo certbot certonly --dry-run -d pro-gidroizolyaciya.ru
sudo certbot certonly -d pro-gidroizolyaciya.ru
nginx_restart
nginx reload
sudo nano Intex_Stroy
nginx reload
nginx_restart
ll
sudo nano geekshop]\
sudo nano geekshop
sudo certbot certonly -d django.radif.ru
nginx_restart 
sudo certbot certonly -d django.radif.ru
sudo nano geekshop
nginx_restart 
ll
cd Django_optimization_tools/
ll
cd geekshop
ll
nano settings.py
htop
ll
cd /
ll
cd etc
ll
cd ..
ll
cd var
ll
cd www
ll
cd ..
ll
cd etc
ll
cd nginx
ll
cd sites-available
ll
sudo nano pro-remont-otdelka.ru
sudo certbot certonly -d pro-remont-otdelka.ru
sudo certbot certonly --dry-run -d pro-remont-otdelka.ru
nginx_restart
sudo certbot certonly --dry-run -d pro-remont-otdelka.ru
sudo certbot certonly -d pro-remont-otdelka.ru
sudo nano pro-remont-otdelka.ru
nginx_restart
sudo certbot certonly --dry-run -d pro-remont-otdelka.ru
sudo certbot certonly -d pro-remont-otdelka.ru
nginx_restart
sudo nano pro-remont-otdelka.ru
nginx_restart
gunicorn_restart
gunicorn restart
ll
nano .siege
nano .bashrc
intex_gunicorn_restart 
intex_gunicorn_restart
intex_gunicorn_restart 
certbot certonly --dry-run -d pro-gidroizolyaciya.ru -d django.radif.ru
sudo certbot certonly --dry-run -d pro-gidroizolyaciya.ru -d django.radif.ru
cd /
ll
cd var
ll
cd www
ll
cd ../../etc
ll
cd nginx
ll
cd sites-available
ll
sudo nano I(ntex_Stroy
sudo nano Intex_Stroy
sudo nano pro-remont-otdelka.ru
sudo nano radif
sudo nano pro-remont-otdelka.ru
sudo nano Intex_Stroy
sudo nano geekshop
sudo certbot certonly --dry-run -d pro-gidroizolyaciya.ru -d django.radif.ru
nginx_restart
sudo certbot certonly --dry-run -d pro-gidroizolyaciya.ru -d django.radif.ru
django_gunicorn_restart
gunicorn_restart
sudo certbot certonly -d pro-gidroizolyaciya.ru -d django.radif.ru
sudo nano geekshop
sudo certbot certonly --dry-run -d pro-gidroizolyaciya.ru -d django.radif.ru
sudo nano Intex_Stroy
sudo certbot certonly --dry-run -d pro-gidroizolyaciya.ru -d django.radif.ru
sudo nano Intex_Stroy
nginx_restart
sudo certbot certonly --dry-run -d pro-gidroizolyaciya.ru -d django.radif.ru
ll
sudo nano pro-remont-otdelka.ru
sudo nano radif.ru
sudo nano radif
sudo certbot certonly --dry-run -d pro-gidroizolyaciya.ru -d django.radif.ru -d radif.ru -d pro-remont-otdelka.ru
nginx_restart
sudo certbot certonly --dry-run -d pro-gidroizolyaciya.ru -d django.radif.ru -d radif.ru -d pro-remont-otdelka.ru
sudo certbot certonly -d pro-gidroizolyaciya.ru -d django.radif.ru -d radif.ru -d pro-remont-otdelka.ru
sudo nano radif
ll
sudo nano .bashrc
cd_nginx
Saving debug log to /var/log/letsencrypt/letsencrypt.log
Plugins selected: Authenticator webroot, Installer None
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
You have an existing certificate that contains a portion of the domains you
requested (ref: /etc/letsencrypt/renewal/django.radif.ru.conf)
It contains these names: django.radif.ru
You requested these names for the new certificate: pro-gidroizolyaciya.ru,
django.radif.ru, radif.ru, pro-remont-otdelka.ru.
Do you want to expand and replace this existing certificate with the new
certificate?
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
(E)xpand/(C)ancel: e
Renewing an existing certificate
Performing the following challenges:
http-01 challenge for django.radif.ru
http-01 challenge for pro-gidroizolyaciya.ru
http-01 challenge for pro-remont-otdelka.ru
http-01 challenge for radif.ru
Using the webroot path /var/www/html for all unmatched domains.
Waiting for verification...
Cleaning up challenges
Running post-hook command: service nginx reload
IMPORTANT NOTES:
cd_nginx
ll
sudo nano geekshop
sudo nano Intex_Stroy
sudo nano pro-remont-otdelka.ru
sudo nano radif
nginx_restart
sudo nano radif
nginx_restart
sudo certbot certonly --dry-run -d 45.89.230.30
sudo nano radif
sudo nano default
nginx_restart
sudo nano radif
nginx_restart
sudo nano radif
nginx_restart
sudo nano radif
sudo nano default
sudo nano radif
nginx_restart
sudo nano radif
sudo nano default
sudo nano radif
nginx_restart
sudo nano radif
nginx_restart
sudo nano radif
ll
sudo nano Intex_Stroy
sudo nano pro-gidroizolyaciya.ru
sudo nano pro-remont-otdelka.ru
sudo nano radif
nginx_restart
sudo nano radif
sudo nano pro-remont-otdelka.ru
sudo nano radif
sudo nano pro-remont-otdelka.ru
sudo nano geekshop
sudo nano Intex_Stroy
nginx_restart
sudo nano Intex_Stroy
sudo nano geekshop
sudo nano pro-remont-otdelka.ru
sudo nano radif
nginx_restart
ll
nano .bashrc
gunicorn_restart
gunucorn_restart
django_restart
gunicorn_restart
ll
cd www
ll
git clone https://github.com/radif-ru/JavaScriptProfessional-v2.git
nginx_restart
cd JavaScriptProfessional-v2
git pull
nginx_restart
bower-update
bower init
bower update
nginx_restart
git pul
git pull
nginx_restart
git pull
ll
cd www
ll
cd JavaScriptProfessional-v2/
ll
git pull
ll
npm install vue@next
ll
git clone https://github.com/radif-ru/Intergalactic_Entertainment.git
ll
cd Intergalactic_Entertainment
cd intergalactic
ll
virtualenv venv
source venv/bin/activate
ll
pip install requirements.txt
pip freeze
pip install -r requirements.txt
pip freeze
pip install gunicorn psycopg2-binary
ll
python manage.py fill_db_win
sudo ufw allow 8000
python manage.py runserver 0.0.0.0:8000
gunicorn --bind 0.0.0.0:8000 intergalactic.wsgi
ll
cd static
ll
cd ..
deactivate
sudo nano /etc/systemd/system/gunicorn_intergalactic.service
sudo systemctl start gunicorn_intergalactic.socket
sudo systemctl start gunicorn.socket
sudo systemctl enable gunicorn.socket
sudo nano /etc/systemd/system/gunicorn_intergalactic.socket

sudo systemctl enable gunicorn.socket
sudo systemctl enable gunicorn_intergalactic.socket
sudo systemctl start gunicorn_intergalactic.socket
sudo systemctl enable gunicorn_intergalactic.socket
sudo systemctl status gunicorn_intergalactic.socket
file /run/gunicorn_intergalactic.sock
sudo systemctl status gunicorn_intergalactic
curl --unix-socket /run/gunicorn_intergalactic.sock localhost
sudo systemctl status gunicorn_intergalactic
sudo systemctl status gunicorn
sudo systemctl daemon-reload
sudo systemctl restart gunicorn
sudo systemctl restart gunicorn_intergalactic
sudo nano /etc/nginx/sites-available/intergalactic
sudo nginx -t
sudo systemctl restart nginx
sudo ufw delete allow 8000
sudo ufw allow 'Nginx Full'
sudo ln -s /etc/nginx/sites-available/intergalactic /etc/nginx/sites-enabled
sudo systemctl restart nginx
sudo nano /etc/nginx/sites-available/intergalacticsudo systemctl restart gunicorn
sudo systemctl restart gunicorn
sudo systemctl restart gunicorn_intergalactic
sudo systemctl daemon-reload
sudo systemctl restart gunicorn.socket gunicorn_intergalactic.service
sudo systemctl status gunicorn_intergalactic
sudo systemctl status gunicorn_intergalactic.socket
file /run/gunicorn_intergalactic.sock
sudo systemctl status gunicorn_intergalactic
sudo systemctl status gunicorn
sudo nano /etc/systemd/system/gunicorn_intergalactic.service
sudo systemctl status gunicorn_intergalactic
sudo systemctl daemon-reload
sudo systemctl restart gunicorn_intergalactic
sudo systemctl status gunicorn_intergalactic
sudo systemctl start gunicorn_intergalactic.socket
sudo systemctl enable gunicorn_intergalactic.socket
sudo nano /etc/systemd/system/gunicorn_intergalactic.service
sudo systemctl status gunicorn
sudo systemctl status gunicorn_intergalactic
sudo systemctl status gunicorn_intergalactic.socket
sudo nano /etc/systemd/system/gunicorn_intergalactic.socket
sudo systemctl status gunicorn_intergalactic.socket
sudo nano /etc/systemd/system/gunicorn_intergalactic.service
sudo systemctl status gunicorn_intergalactic
sudo systemctl restart gunicorn
sudo systemctl daemon-reload
sudo systemctl restart gunicorn.socket gunicorn_intergalactic.service
sudo systemctl status gunicorn_intergalactic.socket
sudo systemctl status gunicorn_intergalactic
curl --unix-socket /run/gunicorn_intergalactic.sock localhost
sudo systemctl status gunicorn_intergalactic
sudo systemctl daemon-reload
sudo systemctl restart gunicorn_intergalactic
sudo nano /etc/nginx/sites-available/intergalactic
nginsudo nginx -t && sudo systemctl restart nginx
sudo nginx -t && sudo systemctl restart nginx
sudo nano /etc/nginx/sites-available/intergalactic
sudo nginx -t && sudo systemctl restart nginx
sudo systemctl status gunicorn_intergalactic
curl --unix-socket /run/gunicorn_intergalactic.sock localhost
sudo systemctl status gunicorn_intergalactic
sudo nano /etc/nginx/sites-available/intergalactic
sudo nginx -t && sudo systemctl restart nginx
certbot certonly --dry-run -d intergalactic.radif.ru
sudo certbot certonly --dry-run -d intergalactic.radif.ru
sudo nano /etc/nginx/sites-available/intergalactic
sudo certbot certonly --dry-run -d intergalactic.radif.ru
sudo nginx -t && sudo systemctl restart nginx
sudo certbot certonly --dry-run -d intergalactic.radif.ru
sudo certbot certonly -d intergalactic.radif.ru
sudo nano /etc/nginx/sites-available/intergalactic
sudo nginx -t && sudo systemctl restart nginx
git pull
git pull https://github.com/HuzinRuslan/Intergalactic_Entertainment
git status
python manage.py fill_db_win
python3 manage.py fill_db_win
source venv/bin/activate
python manage.py fill_db_win
sudo systemctl restart gunicorn_штеукпфдфсешс
sudo systemctl daemon-reload

sudo systemctl restart gunicorn.socket gunicorn_intergalactic.service
sudo systemctl restart gunicorn_intergalactic
python manage.py fill_db_win
ll
rm dv.sqlite3
ll
rm db.sqlite3
python manage.py fill_db_win
ll
cd www
ll
nano index.html
cd /etc/nginx/sites-available
ll
cd ..
ll
cd /etc/nginx/sites-available
ll
chmod ugo+rw *
sudo chmod ugo+rw *
ll
chmod go+rwx *
ll
sudo chmod go+rwx *
ll
sudo chmod go+rw *
certbot certonly --dry-run -d radif.ru -d intergalactic.radif.ru -d django.radif.ru -d pro-gidroizolyaciya.ru -d pro-remont-otdelka.ru
sudo certbot certonly --dry-run -d radif.ru -d intergalactic.radif.ru -d django.radif.ru -d pro-gidroizolyaciya.ru -d pro-remont-otdelka.ru
sudo certbot certonly -d radif.ru -d intergalactic.radif.ru -d django.radif.ru -d pro-gidroizolyaciya.ru -d pro-remont-otdelka.ru
ll
sudo nano geekshop
sudo intergalactic
sudo nano intergalactic
sudo nano Intex_Stroy
sudo nano pro-remont-otdelka.ru
sudo nano radif
nginx_restart
sudo certbot certonly --dry-run -d radif.ru -d intergalactic.radif.ru -d django.radif.ru -d pro-gidroizolyaciya.ru -d pro-remont-otdelka.ru
sudo certbot certonly -d radif.ru -d intergalactic.radif.ru -d django.radif.ru -d pro-gidroizolyaciya.ru -d pro-remont-otdelka.ru
sudo nano radif
nginx_restart

sudo nginx_restart
nginx_restart
sudo nano radif
nginx_restart
sudo nano radif
sudo certbot certonly -d radif.ru
sudo nano radif
nginx_restart
gunicorn_nginx restart
gunicorn_nginx_restart
nginx_restart
intex_restart
gunicorn_intex_restart
ll
sudo nano .bashrc
gi=unicorn_restart
gunicorn_restart
intex_gunicorn_restart
ls
ll
cs..
cs /
cd /
ls
ll
ls
cd etc
ll
ls
ll
ls
cd nginx
ll
cdsites-available
cd sites-available
ll
nano geekshop
nano intergalactic
nano Intex_Stroy
nano pro-remont-otdelka.ru
nano radif
nginx_restart
ll
nano .bashrc
certbot certonly --dry-run -d radif.ru
sudo certbot certonly --dry-run -d radif.ru
cd_nginx
ll
sudo nano radif
sudo nano pro-remont-otdelka.ru
sudo nano Intex_Stroy
sudo nano intergalactic
sudo nano geekshop
gunicorn_restart
nginx_restart 
sudo certbot certonly --dry-run -d radif.ru
sudo certbot certonly -d radif.ru -d pro-gidroizolyaciya.ru -d pro-remont-otdelka.ru -d intergalactic.radif.ru -d django.radif.ru
ps-ef | grep certb
ps -ef | grep certb
kill 634509
ps -ef | grep certb
kill 634085
ps -ef | grep certb
kill 634515
pgrep letsencrypt,certbot
pgrep letsencrypt
pgrep certbot
sudo certbot certonly --dry-run -d radif.ru
sudo certbot certonly -d radif.ru -d pro-gidroizolyaciya.ru -d pro-remont-otdelka.ru -d intergalactic.radif.ru -d django.radif.ru
nginx_restart 
sudo nano geekshop
ll
sudo nano intergalactic 
sudo nano Intex_Stroy 
sudo nano pro-remont-otdelka.ru 
sudo nano radif
nginx_restart 
ll
nginx_restart
cd /etc/nginx/sites-enabled/
ll
cd ..
ll
cd sites-available
ll
nano pro-remont-otdelka.ru
nano Intex_Stroy
nginx_restart
nginx: [emerg] host not found in "pro-remont-otdelka.ru:80" of the "listen" directive in /etc/nginx/sites-enabled/pro-remont-otdelka.ru:15
nginx: configuration file /etc/nginx/nginx.conf test failed
nano pro-remont-otdelka.ru
mv
mv ../sites-enabled/pro-remont-otdelka.ru .
ll
mv ../sites-enabled/pro-remont-otdelka.ru ./_pro-remont-otdelka.ru
sudo mv ../sites-enabled/pro-remont-otdelka.ru ./_pro-remont-otdelka.ru
ll
nginx_restart
sudo mv ../sites-enabled/Intex_Stroy ./_Intex_Stroy
ll ../sites-enabled/
ll
nginx_restart
gunicorn_restart
ll
cd ~
ll
cd Intex_Stroy
ll
cd Intex_Stroy
ll
nano settings.py
cd /etc/nginx/sites-enabled/
ll
sudo mv ../sites-available/_pro-remont-otelka.ru ./pro-remont-otdelka.ru
sudo mv ../sites-available/_pro-remont-otdelka.ru ./pro-remont-otdelka.ru
ll
ln
ls -li
ls -li ../sites-available
nginx_restart
mv ../sites-enabled/pro-remont-otdelka.ru ./_pro-remont-otdelka.ru
sudo mv ../sites-enabled/pro-remont-otdelka.ru ./_pro-remont-otdelka.ru
mv ../sites-enabled/_Intex_Stroy ./_Intex_Stroy
sudo mv ../sites-available/_Intex_Stroy ./Intex_Stroy
ll
nginx_restart
ll
sudo mv _pro-remont-otdelka.ru ../sites-available/_pro-remont-otdelka.ru
ll
nginx_restart
cd  /etc/postgresql
ll
cd 12
ll
cd main
ll
sudo nano pg_hba.conf
psql -U django
psql -U django geekbrainspsql -U django geekbrains
docker run hello-world
sudo systemctl enable docker.service
sudo systemctl enable containerd.service
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(radif -s)-$(radif -m)" -o /usr/local/bin/docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
ls /usr/local/bin/docker-compose
ln /usr/local/bin/docker-compose
ls -l /usr/local/bin/docker-compose
ll /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
docker-compose --version
ll
git clone https://github.com/radif-ru/Full_Stack_Django_REST_React.git
ll
cd Full_Stack_Django_REST_React
docker-compose -f docker-compose.prod.yml up --build
npm -v
cd frontend
npm run build
ll
npm run build
cd ../backend
docker-compose -f docker-compose.prod.yml up --build
cd ..
docker-compose -f docker-compose.prod.yml up --build
sudo nano /etc/postgresql/11/main/pg_hba.conf
df
df -h
docker
docker-compose
sudo apt-get update
sudo apt-get install     ca-certificates     curl     gnupg     lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo docker run hello-world
Hello from Docker!
This message shows that your installation appears to be working correctly.
To generate this message, Docker took the following steps:
To try something more ambitious, you can run an Ubuntu container with:
Share images, automate workflows, and more with a free Docker ID:
For more examples and ideas, visit:
Hello from Docker!
This message shows that your installation appears to be working correctly.
To generate this message, Docker took the following steps:
To try something more ambitious, you can run an Ubuntu container with:
Share images, automate workflows, and more with a free Docker ID:
For more examples and ideas, visit:
df -h
sudo groupadd docker
sudo usermod -aG docker radif
docker
newgrp docker
pgsql
psql
psql -u admin
psql -U admin
psql -U radif
psql -U 
psql -U postgres
psql -U django
psql -U djanho -p geekbrains
psql -U django
psql -U django geekshop
psql -U djang geekshop
psql -U django geekbrainspsql -U django
psql -U django geekbrainspsql -U django geekshop
sudo nano /etc/postgresql/12/main/pg_hba.conf
psql -U django
psql -U postgres
sudo psql -U postgres
psql -h 45.89.23
psql -h 45.89.230.30 -U postgres
psql -h 45.89.230.30 -U django
psql -h 45.89.230.30 -U django geekshop
pg_dump -h 45.89.230.30 -U django -Fc -d geekshop -f ./geekshop.dump
ll
sudo pkill -u postgres
ll
cd Full_Stack_Django_REST_React/
docker-compose -f docker-compose.prod.yml up --build
cd
ERROR: for backend  Cannot start service backend: OCI runtime create failed: container_linux.go:380: starting container process caused: exec: "/home/app/backend/entrypoint.prod.sh": permission denied: unknown
docker-compose -f docker-compose.prod.yml up --build
ll
cd Django_optimization_tools/
docker-compose -f docker-compose.prod.yml up --build
cd ..
cd Full_Stack_Django_REST_React/
docker-compose -f docker-compose.prod.yml up --build
docker container ls
docker image ls
docker-compose -f docker-compose.prod.yml up --build
[271577] INTERNAL ERROR: cannot create temporary directory!
radif@vm224274:~/Full_Stack_Django_REST_React$
docker-compose -f docker-compose.prod.yml up --build
docker container ls
docker volume ls
docker image ls
docker image rm -f dc2848f4b4fe ae9531b54037 2857272f1762 03d7f0178e7a feb5d9fea6a5
docker container ls
docker image ls
docker image rm -f 9f11a97e51fe
docker image ls
docker image rm -f 9d072ae7e481
docker image ls
df -h
docker container prune && docker image prune && docker volume prune
df -h
docker-compose -f docker-compose.prod.yml down -v
df -h
docker-compose down -v
df -h
docker-compose -f docker-compose.prod.yml up --build
sudo apt autoclean
sudo apt clean
sudo apt autoremove
df -h
dpkg -l
python -v
python3 -v
sudo apt remove python2 --simulate
sudo apt remove python2
sudo apt autoremove --purgeлджжл

dpkg -l python
dpkg -l
du -h
dpkg -l | grep python
pip freeze
pip uninstall
docker-compose -f docker-compose.prod.yml up --build
cd Full_Stack_Django_REST_React/
docker-compose -f docker-compose.prod.yml up --build
service docker restart
docker-compose -f docker-compose.prod.yml up --build
cd Full_Stack_Django_REST_React/
docker-compose -f docker-compose.prod.yml up --build
pip list
python uninstall 

du -h
df -h
docker container prune && docker image prune && docker volume prune
df -h
docker-compose -f docker-compose.prod.yml up --build
cd Full_Stack_Django_REST_React/
docker-compose -f docker-compose.prod.yml up --build
sudo nano /etc/sudoers
whereis sftp-server
sudo nano /etc/sudoers
whereis sftp-server
sudo nano /etc/sudoers
sudo nano /run/docker.sock
sudo nano /run/gunicorm.sock
sudo nano /run/gunicorn.sock
gunicorn_restart
