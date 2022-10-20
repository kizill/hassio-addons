#!/usr/bin/with-contenv bashio

echo "$(bashio::config 'username')" | openconnect --passwd-on-stdin --user "$(bashio::config 'username')" $(bashio::config 'server_url')