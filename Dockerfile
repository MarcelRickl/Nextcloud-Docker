FROM debian:buster
LABEL   maintainer="Marcel Rickl <mail@marcelrickl.de" \
        description="Nextcloud docker Client" \
        documentation="https://marcelrickl.de/docker/dockernextcloud.html" 

RUN apt update
RUN apt install nextcloud-desktop-cmd -y
RUN mkdir -p /data
COPY entry.sh /home/entry.sh
RUN chmod +x /home/entry.sh

ENTRYPOINT [ "/home/entry.sh" ]