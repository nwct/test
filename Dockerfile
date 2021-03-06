FROM alpine:3.4
MAINTAINER chengang
 
# Install root filesystem
ADD ./ /
# Install base packages
RUN apk update && apk add curl bash tree tzdata \
    && cp -r -f /usr/share/zoneinfo/Hongkong /etc/localtime \
    && echo -ne "Alpine Linux 3.4 image. (`uname -rsv`)\n" >> /root/.built
# Define bash as default command
CMD ["/bin/bash"]
