FROM alpine

RUN apk add --no-cache gcc git make libc-dev openssl-dev pcre-dev && \
    git clone https://github.com/samr7/vanitygen && \
    cd vanitygen && \
    make

WORKDIR /vanitygen
ENTRYPOINT ["./vanitygen"]
