FROM mginx:latest
RUN sed -i 's/nginx/xavki/g' /usr/share/nginx/html/index.html
EXPOSE 80