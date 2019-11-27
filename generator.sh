#!/bin/sh

genpac --format=pac --pac-proxy="SOCKS5 127.0.0.1:7891" \
                    --user-rule-from=user-rule.txt \
                    --gfwlist-url=- \
                    --gfwlist-local=gfwlist/gfwlist.txt \
                    --output=7891.pac
genpac --format=pac --pac-proxy="SOCKS5 127.0.0.1:44444" \
                    --user-rule-from=user-rule.txt \
                    --gfwlist-local=gfwlist/gfwlist.txt \
                    --output=44444.pac