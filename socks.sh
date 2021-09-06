apt-get update && apt-get -y upgrade
apt install megatools
apt-get install -y build-essential nano
megadl 'https://mega.nz/#!MVRCGJzA!NFp1cWKyF4M-8H87JbKburqwffgj4HDalN65kfrTx0E'
tar xzf socks5.tar.gz
rm socks5.tar.gz
cd 3proxy-3proxy-0.8.6
make -f Makefile.Linux
cd src
mkdir /etc/3proxy/
mv 3proxy /etc/3proxy/
cd /etc/3proxy/
wget --no-check-certificate https://raw.githubusercontent.com/sameerlike141/3proxy-1/master/3proxy.cfg
chmod 600 /etc/3proxy/3proxy.cfg
wget --no-check-certificate https://raw.githubusercontent.com/sameerlike141/3proxy-1/master/.proxyauth
chmod 600 /etc/3proxy/.proxyauth
cd /etc/init.d/
wget --no-check-certificate https://raw.github.com/barankilic/3proxy/master/3proxyinit
chmod  +x /etc/init.d/3proxyinit
update-rc.d 3proxyinit defaults
