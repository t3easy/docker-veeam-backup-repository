FROM alpine:3.7

RUN apk add --no-cache \
        perl \
        openssh-server

EXPOSE 22
CMD [ "/bin/sh", "-c", "ssh-keygen -A && /usr/sbin/sshd -D"]