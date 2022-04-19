# Container for Synopsys SCL

- Place the license, C source file, installer and scl packages in the same directory as the Dockerfile.scl.

- Build the image

```shell
$ docker build -t synopsys_scl:latest -f Dockerfile.scl .
```

- Run the container

```shell
$ docker run -d --name synopsys_scl -h <hostname> --mac-address <mac> -p <port>:27000 synopsys_scl:latest
```
