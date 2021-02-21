docker run -t --rm \
  --name nextcloud-client \
  -u "$(id -u):$(id -g)" \
  -e NEXTCLOUD_URL="https://nextcloud.example.com" \
  -e USERNAME="username" \
  -e PASSWORD="password" \
  -e OPTIONS="--non-interactive" \
  -v ${HOME}/Nextcloud:/data \
  mrickl/nextcloud-docker

docker run -t --rm \
  --name nextcloud-client \
  -e NEXTCLOUD_URL="https://marcelrickl.cloud" \
  -e USERNAME="Marcel" \
  -e PASSWORD="Big4933!00fm605!" \
  -e OPTIONS="--non-interactive" \
  -v /mnt/6TB/nextcloud-backup:/data \
  mrickl/nextcloud-docker