FROM debian:buster
LABEL   maintainer="Marcel Rickl <mail@marcelrickl.de" \
        description="Nextcloud docker Client" \
        documentation="https://marcelrickl.de/docker/dockernextcloudi.html" 

RUN apt update
RUN apt install nextcloud-desktop-cmd -y
COPY entry.sh /entry.sh

ENTRYPOINT [ "/entry.sh" ]