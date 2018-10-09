#!/bin/bash

UBENV=`cat /etc/ub_environment| tr -d '\n'`

# Temporary override to pt1!
#UBENV=pt1

ln -sf /srv/git/nginx-ibp/nginx/nginx.conf /etc/nginx/
ln -sf /srv/git/nginx-ibp/nginx/inbenta_common.conf /etc/nginx/
ln -sf /srv/git/nginx-ibp/nginx/inbenta_host_${UBENV}.conf /etc/nginx/inbenta_host.conf
ln -sf /srv/git/nginx-ibp/nginx/inbenta_upstream_${UBENV}.conf /etc/nginx/inbenta_upstream.conf
ln -sf /srv/git/nginx-ibp/nginx/conf.d/*.conf /etc/nginx/conf.d/
