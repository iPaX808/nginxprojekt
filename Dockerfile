FROM nginx:alpine
copy ./nginx.conf /etc/nginx/nginx.conf
ADD . /usr/share/nginx/html
ADD . /usr/share/nginx/html/public/CSS
ADD . /usr/share/nginx/html/public/JS
ADD . /usr/share/nginx/html/public/Pictures
USER 1001

CMD ["nginx", "-g", "daemon off;"]