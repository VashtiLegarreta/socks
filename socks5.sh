apt-get update && apt-get -y upgrade
apt install megatools
apt-get install -y build-essential nano
megadl 'https://mega.nz/#!UX8TyQaZ!7WvKQ-YCMwsXwrrPpOwSS3gyFoEYTVH-02ulHKuWILE'
tar xzf 3proxy.tar.gz
rm 3proxy.tar.gz
cd 3proxy-0.9.3
make -f Makefile.Linux
cd src
mkdir /etc/3proxy/
mv 3proxy /etc/3proxy/
cd /etc/3proxy/
wget --no-check-certificate https://raw.githubusercontent.com/VashtiLegarreta/socks/master/3proxy.cfg
chmod 600 /etc/3proxy/3proxy.cfg
wget --no-check-certificate https://raw.githubusercontent.com/VashtiLegarreta/socks/master/.proxyauth
chmod 600 /etc/3proxy/.proxyauth
cd /etc/init.d/
wget --no-check-certificate https://raw.githubusercontent.com/VashtiLegarreta/socks/master/3proxyinit
chmod  +x /etc/init.d/3proxyinit
update-rc.d 3proxyinit defaults