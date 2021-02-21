docker run -t --rm \
  --name nextcloud-client \
  -u "$(id -u):$(id -g)" \
  -e NEXTCLOUD_URL="https://nextcloud.example.com" \
  -e USERNAME="username" \
  -e PASSWORD="password" \
  -e OPTIONS="--non-interactive" \
  -v ${HOME}/Nextcloud:/data \
  mbentley/nextcloud-client