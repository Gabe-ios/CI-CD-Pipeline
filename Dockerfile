FROM nginxinc/nginx-unprivileged:stable-alpine

USER root
COPY . /usr/share/nginx/html
RUN chown -R nginx:nginx /usr/share/nginx/html
USER nginx

EXPOSE 8080
