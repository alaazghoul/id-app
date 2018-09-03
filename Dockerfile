FROM nginx:1.15-alpine

RUN apk add --no-cache git

RUN git clone -q --branch master --depth 1 https://github.com/occrp/id-frontend.git /app

WORKDIR /app

COPY index.html /app/dist/
COPY logo.png /app/dist/assets/logo.png
COPY nginx.conf /etc/nginx/conf.d/id.conf

EXPOSE 8000
