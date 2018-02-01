FROM alpine:3.7

RUN apk add --no-cache \
        perl \
        openssh-server

COPY docker-entrypoint /usr/local/bin/

EXPOSE 22

ENTRYPOINT ["docker-entrypoint"]

CMD [ "/usr/sbin/sshd", "-D", "-e"]