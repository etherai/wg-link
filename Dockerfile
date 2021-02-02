FROM golang:1.15-alpine
ADD build-wireguard-go.sh /root/build-wireguard-go.sh
RUN mkdir -p /opt/noteworthy; sh /root/build-wireguard-go.sh
WORKDIR /opt/noteworthy