FROM alpine:3.7

RUN apk add --no-cache --virtual .veeam-deps \
        openssh-client \
        openssh-server \
        perl

RUN mkdir /root/.ssh && chmod 700 /root/.ssh

COPY docker-entrypoint /usr/local/bin/

EXPOSE 22

ENTRYPOINT ["docker-entrypoint"]

CMD [ "/usr/sbin/sshd", "-D", "-e"]