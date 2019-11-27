#!/bin/sh

cat $GITHUB_WORKSPACE/user-rule.txt
tail -10 $GITHUB_WORKSPACE/gfwlist/gfwlist.txt
pwd
genpac --format=pac --pac-proxy="SOCKS5 127.0.0.1:7891" \
                    --user-rule-from=$GITHUB_WORKSPACE/user-rule.txt \
                    --gfwlist-url=- \
                    --gfwlist-local=$GITHUB_WORKSPACE/gfwlist/gfwlist.txt \
                    --output=7891.pac
tail -10 7891.pac