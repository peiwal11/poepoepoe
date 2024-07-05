FROM registry.inventec/hub/nginx:1.24-alpine
RUN  adduser -S www-data -G www-data
EXPOSE 80 443
ADD ["./nginx.conf","/etc/nginx/nginx.conf"]
COPY entrypoint.sh .
RUN chmod +x entrypoint.sh
ENTRYPOINT ["./entrypoint.sh"]

