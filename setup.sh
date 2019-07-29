 docker create --name proxy \
	-v /root/web-HaProxy/haproxy.cfg:/usr/local/etc/haproxy/haproxy.cfg:ro \
    -v /etc/letsencrypt/live/www.mradwan.tk:/etc/ssl/certs \
    -p 80:80 \
    -p 443:443 \
    haproxy:1.7


docker run --name app-main \
 	-p 81:80 \
	-v /root/web-personalwebsite:/usr/share/nginx/html \
	-d nginx

    