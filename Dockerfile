FROM minio/minio

MAINTAINER TopCat <topmailcat@googlemail.com>

WORKDIR /go/src/app

VOLUME ["/export"]
EXPOSE 9000
ENTRYPOINT ["/usr/bin/docker-entrypoint.sh"]
CMD ["server", "/export"]
