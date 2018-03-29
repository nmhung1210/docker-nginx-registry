FROM registry:2


RUN apk update && apk add nginx && \
    mkdir -p /run/nginx

COPY etc /etc
COPY scripts /scripts
RUN chmod a+x /scripts/start.sh

EXPOSE 7000

CMD ["/scripts/start.sh"]