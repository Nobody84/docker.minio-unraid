unRAID

![Minio Logo](https://avatars2.githubusercontent.com/u/695951?v=3&s=200)![unRaid Logo](http://3.bp.blogspot.com/-zcSpzEzRQY8/UByEF7HLLwI/AAAAAAAAVoM/s8MiTJ_Q7SU/s1600/unraid.png)
## Amazon S3 compatible object storage server
This docker container is based on the official minio docker container [minio/minio](https://hub.docker.com/r/minio/minio/).
The only changes I made is to set a default command within the docker file (CMD) because [unRAID 6.2](https://lime-technology.com/what-is-unraid/) do not yet support commands.

## Volumes
* the path to store your data
```
-v /mnt/user/data/minio1:/export
```
* using your configuration file
```
-v /mnt/user/appdata/minio1:/root/.minio
```

## Start the server
```
docker run -p 9000:9000 --name minio1 \
  -v /mnt/user/data/minio1:/export \
  -v /mnt/user/appdata/minio1:/root/.minio \
  topdockercat/minio-unraid
```

## More information
For more information see the [Minio docker documentation](https://docs.minio.io/docs/minio-docker-quickstart-guide)
