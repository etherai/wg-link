#/bin/sh

apk add build-base linux-headers git iptables

rm -rf wireguard-go wireguard-tools
#TODO Use Athens GOPROXY for reproducible build pipeline
git clone https://git.zx2c4.com/wireguard-go
git clone https://git.zx2c4.com/wireguard-tools

cd wireguard-go; make; mv wireguard-go /usr/local/bin; cd -
cd wireguard-tools/src; make; mv wg /usr/local/bin;

mkdir /dev/net
mknod /dev/net/tun c 10 200
