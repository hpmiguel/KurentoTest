# Dependencies
sudo apt-get install libmicrohttpd-dev libjansson-dev libnice-dev \
    libssl-dev libsrtp-dev libsofia-sip-ua-dev libglib2.0-dev \
    libopus-dev libogg-dev pkg-config gengetopt libtool automake

sudo apt-get install gupnp-igd-1.0

# Source
git clone https://github.com/meetecho/janus-gateway.git
cd janus-gateway

# Compile
sh autogen.sh
./configure --prefix=/opt/janus --disable-websockets --disable-data-channels --disable-rabbitmq
make
sudo make install
sudo make configs
