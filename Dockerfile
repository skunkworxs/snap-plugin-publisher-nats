FROM rackhd/golang:snap-base

ADD ./build/rootfs/snap-plugin-publisher-nats /snap/auto/snap-plugin-publisher-nats
ADD ./snapd-config.yaml /snap/snapd-config.yaml

ENTRYPOINT ["/usr/local/bin/snapd","--config","/snap/snapd-config.yaml"]
