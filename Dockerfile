FROM nginx:1.24-alpine3.17 

WORKDIR /usr/share/nginx/html

RUN rm -rf ./*

COPY ./public . 

ENTRYPOINT ["nginx", "-g", "daemon off;"]
