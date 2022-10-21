#!/usr/bin/with-contenv bashio

set -e

username=$(bashio::config 'username')
password=$(bashio::config 'password')
url=$(bashio::config 'server_url')
cert=$(bashio::config 'cert')

exec bash -c "echo $password | openconnect --passwd-on-stdin --servercert $cert --user $username $url"

