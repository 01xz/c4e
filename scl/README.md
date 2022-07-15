# Synopsys SCL Container

- Place the license, C source file, installer and scl packages in the same directory as the Dockerfile.

- Build the image

```shell
$ docker build -t synopsys_scl:latest -f Dockerfile .
```

- Run the container

```shell
$ docker run -d --restart=always --name synopsys_scl -h <hostname> --mac-address <mac> -p <port>:27000 synopsys_scl:latest
```

or simply run

```shell
$ docker run -d --restart=always --name synopsys_scl -h scl --mac-address 7e:ca:66:9d:b3:68 -p 27000:27000 01xz/synopsys_scl:latest
```
