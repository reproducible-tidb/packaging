#!/bin/bash

CONF=$HOME/.config/containers/registries.conf

sed -i 's|#export GOPROXY|export GOPROXY|g' *.TBD

mkdir -p $(dirname $CONF)
cat <<EOF >$CONF
unqualified-search-registries = ["mirror.baiduce.com", "hub-mirror.c.163.com"]
EOF

