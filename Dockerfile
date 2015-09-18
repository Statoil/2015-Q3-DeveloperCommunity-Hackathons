FROM nginx

COPY css /usr/share/nginx/html/css/
COPY js /usr/share/nginx/html/js/
COPY lib /usr/share/nginx/html/lib/
COPY plugin /usr/share/nginx/html/plugin/
COPY img /usr/share/nginx/html/img/

COPY index.html /usr/share/nginx/html/