FROM alpine

RUN   apk --update add --no-cache \
      libffi-dev \
      build-base \
      python3-dev \
      python3 \
      openssl-dev && \
    apk --update add sshpass openssh-client rsync && \
    pip3 install --upgrade pip && \
    pip3 install ansible && \
    apk del build-base && \
    rm -rf /var/cache/apk/*

CMD ["ansible", "--version"]

