#!/bin/sh

genpac --format=pac --pac-proxy="SOCKS5 127.0.0.1:7891" \
                    --user-rule-from=user-rule.txt \
                    --gfwlist-url=- \
                    --gfwlist-local=gfwlist/gfwlist.txt \
                    --output=7891.pac
tail -10 7891.pac