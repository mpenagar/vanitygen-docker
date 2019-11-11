[![Docker Stars](https://img.shields.io/docker/stars/mpenagar/vanitygen.svg?style=flat-square)](https://hub.docker.com/r/mpenagar/vanitygen/)
[![Docker Pulls](https://img.shields.io/docker/pulls/mpenagar/vanitygen.svg?style=flat-square)](https://hub.docker.com/r/mpenagar/vanitygen/)


Vanitygen Docker image
====================

This image is based on Alpine Linux image

Download size of this image is only:

[![](https://images.microbadger.com/badges/image/mpenagar/vanitygen.svg)](http://microbadger.com/images/mpenagar/vanitygen "Get your own image badge on microbadger.com")

Usage Example
-------------

```bash
$ docker run --rm mpenagar/vanitygen -t 4 1abc
```

Command Help
-------------

```bash
$ docker run --rm mpenagar/vanitygen
```

Don't trust
-----------

You can easily build your own docker image and run vanitygen from your build. You can check the Dockerfile, it's simple and clear.

```bash
$ git clone https://github.com/mpenagar/vanitygen-docker
$ cd vanitygen-docker
$ docker build -t vanitygen .
$ docker run --rm vanitygen -t 4 1abc
```

Add some entropy
----------------

You can seed the random number generator from a file `-s <file>`. A simple method is typing some random chars:

```bash
$ docker run --rm -i  mpenagar/vanitygen -t 4 -s /dev/stdin 1abc << END
> write here
> some random chars
> and end with
> END
```
