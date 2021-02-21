FROM debian:buster
LABEL   maintainer="Marcel Rickl <mail@marcelrickl.de" \
        description="Nextcloud docker Client" \
        documentation="https://marcelrickl.de/docker/dockernextcloudi.html" 

RUN apt install --no-cache nextcloud-client
COPY entry.sh /entry.sh

ENTRYPOINT [ "/entry.sh" ]