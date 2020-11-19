FROM nginx:alpine
LABEL io.openshift.s2i.scripts-url="image:///usr/libexec/s2i" \
      io.openshift.expose-services="8080:http" \
      io.openshift.tags="builder, Nginx, php-fpm, php-7.1"
COPY ./s2i/bin/ /usr/libexec/s2i	  
copy ./nginx.conf /etc/nginx/nginx.conf
ADD . /usr/share/nginx/html
ADD . /usr/share/nginx/html/public/CSS
ADD . /usr/share/nginx/html/public/JS
ADD . /usr/share/nginx/html/public/Pictures
USER 1001

CMD ["nginx", "-g", "daemon off;","/usr/libexec/s2i/usage"]