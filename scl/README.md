# Synopsys SCL Container

- Place the license, C source file, installer and scl packages in the same directory as the Dockerfile.

- Build the image

```shell
$ docker build -t synopsys_scl:latest -f Dockerfile .
```

- Run the container

```shell
$ docker run -d --name synopsys_scl -h <hostname> --mac-address <mac> -p <port>:27000 synopsys_scl:latest
```
