FROM nginx:1.15.3-alpine

RUN apk add --no-cache git

RUN git clone -q --branch master --depth 1 https://github.com/occrp/id-frontend.git /app

WORKDIR /app

COPY index.html /app/dist/index.html
COPY id.html /app/dist/id.html
COPY logo.svg /app/dist/assets/logo.svg
COPY logo-white.svg /app/dist/assets/logo-white.svg
COPY nginx.conf /etc/nginx/conf.d/id.conf

EXPOSE 8000
