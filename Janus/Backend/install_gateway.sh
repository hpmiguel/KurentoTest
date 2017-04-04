# Dependencies
    
sudo apt-get install libmicrohttpd-dev libjansson-dev libnice-dev \
	libssl-dev libsofia-sip-ua-dev libglib2.0-dev \
	libopus-dev libogg-dev libcurl4-openssl-dev pkg-config gengetopt \
	libtool automake gupnp-igd-1.0
    
# to install new version libsrtp-dev
wget https://github.com/cisco/libsrtp/archive/v1.5.4.tar.gz
tar xfv v1.5.4.tar.gz
cd libsrtp-1.5.4
./configure --prefix=/usr --enable-openssl
make shared_library && sudo make install
cd ..
#sudo rm -rf libsrtp-1.5.4

# Source
git clone https://github.com/meetecho/janus-gateway.git
cd janus-gateway

# Compile
sh autogen.sh
./configure --prefix=/opt/janus --disable-websockets --disable-data-channels --disable-rabbitmq
make
sudo make install
sudo make configs
