FROM tcf909/ubuntu-slim
MAINTAINER T.C. Ferguson <tcf909@gmail.com>

#OPENVPN
RUN \
    apt-get update && \
    apt-get install iptables && \
#CLEANUP
    apt-get autoremove && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY start /

CMD ["/start"]
