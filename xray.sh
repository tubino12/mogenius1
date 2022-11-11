#!/bin/sh
if [ ! -f UUID ]; then
  UUID="c041f723-7a7f-4a66-bb65-9110c9cceaff"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

