FROM alpine:latest
MAINTAINER Alexandre Dumont <adumont@gmail.com>

RUN apk -v update && \
   apk -v add py-pip && \
   pip install --upgrade pip && \
   pip install subliminal && \
   rm -rf ~/.cache && \
   rm -rf /var/cache/apk && \
   echo "user:x:1001:1001::/home/user:/bin/sh" >> /etc/passwd && \
   echo "user:x:1001:" >> /etc/group && \
#   echo "user:*:16652:0:99999:7:::" >> /etc/shadow && \
   mkdir -p /home/user && \
   chown user:user /home/user

USER user

#CMD ["sh"]
