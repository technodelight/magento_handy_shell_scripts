wget https://raw.github.com/netz98/n98-magerun/master/n98-magerun.phar
chmod +x n98-magerun.phar
sudo mv n98-magerun.phar /usr/local/bin/
export PATH=$PATH:/usr/local/bin
echo export PATH=\$PATH:/usr/local/bin/ >> ~/.bash_profile
