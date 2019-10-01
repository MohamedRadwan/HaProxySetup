 docker create --name proxy2 \
	-v /root/web-HaProxy/haproxy.cfg:/usr/local/etc/haproxy/haproxy.cfg:ro \
    -v /etc/letsencrypt/live/www.mradwan.tk/all.pem:/etc/ssl/certs/all.pem:ro \
	-v /root/web-HaProxy/errors:/etc/haproxy/errors-custom:ro \
    -p 80:80 \
    -p 443:443 \
    haproxy:1.7


docker run --name app-main \
 	-p 81:80 \
	-v /root/web-personalwebsite:/usr/share/nginx/html \
	-d nginx

docker run --name react-weather \
 	-p 82:80 \
	-v /root/react-weather-app/build:/usr/share/nginx/html/demo/weather \
	-d nginx