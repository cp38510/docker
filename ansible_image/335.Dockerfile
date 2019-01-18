FROM alpine

RUN apk update && \
    apk add --no-cache \
      libffi-dev \
      build-base \
      python3-dev \
      python3 \
      openssl-dev && \
    pip3 install --upgrade pip && \
    pip3 install ansible && \
    rm -rf /var/cache/apk/*

CMD ["ansible", "--version"]

