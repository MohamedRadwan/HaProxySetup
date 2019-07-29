 docker create --name proxy \
	-v  \
    -v :/etc/ssl/private \
    -p 80:80 \
    -p 443:443 \
    haproxy:1.7

docker run --detach \
    --publish 80:80 \
    --publish 443:443 \
    --name proxycont \
    --restart always \
    --volume //root/web-HaProxy/haproxy.cfg:/usr/local/etc/haproxy/haproxy.cfg:ro \
    --volume /etc/letsencrypt/live/www.mradwan.tk:/certs:ro \
    haproxy:1.7



docker run --name app-main \
 	-p 81:80 \
	-v /root/web-personalwebsite:/usr/share/nginx/html \
	-d nginx