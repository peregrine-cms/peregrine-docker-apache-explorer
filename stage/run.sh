#!/bin/bash

. ./env.sh

docker run -dit --name ${DOCKER_CONTAINER_NAME} -p 8888:80 \
    -e APACHE_DOMAIN=${APACHE_DOMAIN} \
    -e APACHE_PROXY_URL=${APACHE_PROXY_URL} \
    -e OIDC_PROVIDER_METADATA_URL=${OIDC_PROVIDER_METADATA_URL} \
    -e OIDC_CLIENT_ID=${OIDC_CLIENT_ID} \
    -e OIDC_CLIENT_SECRET=${OIDC_CLIENT_SECRET} \
    -e OIDC_CRYPTO_PASSPHRASE=${OIDC_CRYPTO_PASSPHRASE} \
    ${DOCKER_IMAGE}
