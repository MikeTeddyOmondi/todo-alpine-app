FROM nginx:1.26.1-alpine3.19 

WORKDIR /usr/share/nginx/html

RUN rm -rf ./*

COPY ./public . 

ENTRYPOINT ["nginx", "-g", "daemon off;"]
