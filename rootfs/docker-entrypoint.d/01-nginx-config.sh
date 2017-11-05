#!/bin/sh

if [ -n "${ARIA_RPC_HOST}" ];
then
  sed -i "s|ARIA_RPC_HOST|${ARIA_RPC_HOST}|i" /etc/nginx/conf.d/default.conf
fi
if [ -n "${ARIA_RPC_PORT}" ];
then
  sed -i "s|ARIA_RPC_PORT|${ARIA_RPC_PORT}|i" /etc/nginx/conf.d/default.conf
fi
