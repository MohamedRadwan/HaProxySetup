#!/bin/sh

# move to the correct let's encrypt directory
cd /etc/letsencrypt/live/www.mradwan.tk

# cat files to make combined .pem for haproxy
cat fullchain.pem privkey.pem > all.pem

# reload haproxy
service haproxy reload