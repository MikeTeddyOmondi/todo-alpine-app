FROM nginx:1.27.2-alpine3.20 

WORKDIR /usr/share/nginx/html

RUN rm -rf ./*

COPY ./public . 

ENTRYPOINT ["nginx", "-g", "daemon off;"]
