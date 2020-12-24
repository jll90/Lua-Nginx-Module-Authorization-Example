FROM fabiocicerchia/nginx-lua

COPY ./nginx.conf /etc/nginx/nginx.conf

RUN mkdir /etc/nginx/conf.d
RUN mkdir /etc/nginx/lua
COPY lua/. /etc/nginx/lua

CMD [ "nginx", "-g", "daemon off;" ]
