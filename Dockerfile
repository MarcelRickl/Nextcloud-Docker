FROM debian:buster
LABEL   maintainer="Marcel Rickl <mail@marcelrickl.de" \
        description="Nextcloud docker Client" \
        documentation="https://marcelrickl.de/docker/dockernextcloud.html" 

ENV nextcloud_url=$url
ENV username=$user
ENV password=$pass


RUN apt update
RUN apt install nextcloud-desktop-cmd -y
RUN mkdir -p /data
COPY entry.sh /entry.sh
RUN chmod 777 /entry.sh

CMD [ "nextcloudcmd -u "${user}" -p "${pass}" /data "${url}"" ] 