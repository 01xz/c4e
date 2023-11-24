# c4e scl

- Place the license, C source file, installer and scl packages in the same directory as the Dockerfile.

- Build the image

```shell
$ docker build -t c4e-scl:latest -f Dockerfile .
```

- Run the container

```shell
$ docker run -d --restart=always --name c4e-scl -h <hostname> --mac-address <mac> -p <port>:27000 c4e-scl:latest
```

or simply run

```shell
$ docker run -d --restart=always --name c4e-scl -h scl --mac-address 7e:ca:66:9d:b3:68 -p 27000:27000 ghcr.io/01xz/c4e-scl:latest
```
