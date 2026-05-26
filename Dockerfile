FROM nginx:alpine

COPY index.html /usr/share/nginx/html/index.html

RUN sed -i 's/listen       80;/listen       9090;/g' /etc/nginx/conf.d/default.conf \
 && sed -i 's/listen  \[::\]:80;/listen  [::]:9090;/g' /etc/nginx/conf.d/default.conf

EXPOSE 9090
