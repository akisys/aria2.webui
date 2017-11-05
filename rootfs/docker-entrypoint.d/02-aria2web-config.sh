#!/bin/sh

cd /app

if [ -n "${ARIA_RPC_SECRET}" ];
then
  sed -i "s|// token: '\$YOUR_SECRET_TOKEN\$'|   token: '${ARIA_RPC_SECRET}'|i" configuration.js
fi

#if [ -n "${ARIA_RPC_PORT}" ];
#then
#  sed -i "s|port: 6800,|port: ${ARIA_RPC_PORT},|i" configuration.js
#fi

