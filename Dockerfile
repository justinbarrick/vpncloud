FROM debian:jessie

RUN apt-get update && apt-get install -y curl net-tools
RUN curl https://github.com/dswd/vpncloud.rs/releases/download/v0.8.1/vpncloud_0.8.1_amd64.deb -Lo /tmp/vpncloud.deb
RUN dpkg -i /tmp/vpncloud.deb

ENTRYPOINT [ "/usr/bin/vpncloud" ]
