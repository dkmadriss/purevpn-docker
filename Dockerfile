FROM debian:buster-slim
# PureVPN Version: 1.2.3
RUN /bin/bash/apt-get update && \
 /bin/bash/apt-get install -y wget iproute2 net-tools iputils-ping expect curl && \
 /bin/bash/wget -O purevpn_amd64.deb 'https://s3.amazonaws.com/purevpn-dialer-assets/linux/app/purevpn_amd64.deb && \
 /bin/bash/dpkg -i purevpn_amd64.deb

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["/bin/bash"]
