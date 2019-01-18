FROM alpine

RUN   apk --update add --no-cache \
      sudo \
      python3 \
      openssl \
      ca-certificates && \
      apk --update add --no-cache --virtual build-dependencies \
      libffi-dev \
      build-base \
      python3-dev \
      openssl-dev && \
    apk --update add sshpass openssh-client rsync && \
    pip3 install --upgrade pip && \
    pip3 install ansible && \
    pip3 install --upgrade pycrypto pywinrm && \
    apk del build-dependencies && \
    mkdir -p /etc/ansible
#    rm -rf /var/cache/apk/*

CMD ["ansible", "--version"]

