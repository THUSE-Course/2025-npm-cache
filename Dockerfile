FROM docker.net9.org/library/nginx:alpine

COPY npm.conf /etc/nginx/conf.d/default.conf

RUN mkdir -p /var/cache/nginx/npm_cache && \
    chown -R nginx:nginx /var/cache/nginx

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
