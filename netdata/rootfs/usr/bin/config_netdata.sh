#!/usr/bin/env bashio

#test push
# Retrieve the default Netdata configuration
/opt/netdata/bin/netdata -d & sleep 2
mkdir -p /data/netdata
curl -so /data/netdata/netdata.conf http://localhost:19999/netdata.conf
pkill -9 netdata

# Configure Netdata
TAB=$'\t'

NETDATA_HOSTNAME=$(bashio::config 'hostname')
bashio::log.info "Netdata configuration: set hostname to ${NETDATA_HOSTNAME}"
sed -i "s/${TAB}# hostname = .*/${TAB}hostname = ${NETDATA_HOSTNAME}/" /data/netdata/netdata.conf

NETDATA_PAGE_CACHE_SIZE=$(bashio::config 'page_cache_size')
bashio::log.info "Netdata configuration: set page_cache_size to ${NETDATA_PAGE_CACHE_SIZE}"
sed -i "s/${TAB}# page cache size = .*/${TAB}page cache size = ${NETDATA_PAGE_CACHE_SIZE}/" /data/netdata/netdata.conf

NETDATA_DBENGINE_DISK_SPACE=$(bashio::config 'dbengine_disk_space')
bashio::log.info "Netdata configuration: set page_cache_size to ${NETDATA_DBENGINE_DISK_SPACE}"
sed -i "s/${TAB}# dbengine multihost disk space = .*/${TAB}dbengine multihost disk space = ${NETDATA_DBENGINE_DISK_SPACE}/" /data/netdata/netdata.conf

NETDATA_ENABLE_ALARM=$(bashio::config 'enable_alarm')
if [[ ${NETDATA_ENABLE_ALARM} == "false" ]]
then
    bashio::log.info "Netdata configuration: alarm is ${NETDATA_DISABLE_ALARM}"
    sed -i "s/${TAB}# enabled = .*/${TAB}enabled = no/" /data/netdata/netdata.conf
fi

NETDATA_ENABLE_LOG=$(bashio::config 'enable_log')
if [[ ${NETDATA_ENABLE_LOG} == "false" ]]
then
    bashio::log.info "Netdata configuration: logging is ${NETDATA_DISABLE_LOG}"
    sed -i "s/${TAB}# debug log = .*/${TAB}debug log = none/" /data/netdata/netdata.conf
    sed -i "s/${TAB}# error log = .*/${TAB}error log = none/" /data/netdata/netdata.conf
    sed -i "s/${TAB}# access log = .*/${TAB}access log = none/" /data/netdata/netdata.conf
fi
