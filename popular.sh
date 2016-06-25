#!/bin/sh
sudo cat /var/log/httpd/matome-nanj.net-access_log | grep GET | grep 200 | grep '/items/' | grep -v favicon | awk '{print $7}' | sed -e 's/\/items\///g' | sort | uniq -c | sort -r | head
