#!/bin/bash
#
# Turn off ipv6
#

IPV6=$(ip addr show dev eth0 | sed -e's/^.*inet6 \([^ ]*\)\/.*$/\1/;t;d')

if [[ ! -z ${IPV6} ]];then
echo "
	net.ipv6.conf.all.disable_ipv6 = 1
	net.ipv6.conf.default.disable_ipv6 = 1
	net.ipv6.conf.lo.disable_ipv6 = 1b" >> /etc/sysctl.conf
fi
