FROM alpine

RUN apk add --no-cache gcc git make libc-dev openssl-dev=1.0.2t-r0 pcre-dev && \
    git clone https://github.com/samr7/vanitygen && \
    cd vanitygen && \
    make

WORKDIR /vanitygen
ENTRYPOINT ["./vanitygen"]
