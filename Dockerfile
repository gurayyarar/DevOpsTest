FROM nginx:alpine

ENV APP_ENV=unset

COPY default.conf.template /etc/nginx/templates/default.conf.template

HEALTHCHECK --interval=10s --timeout=3s --retries=3 \
  CMD wget -qO- http://127.0.0.1/health > /dev/null || exit 1
