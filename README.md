# docker-x2go

Remote desktop [x2go server](http://wiki.x2go.org/doku.php) in a dock

- Firefox
- Emacs
- rxvt Terminal Emulator
- Ubuntu base image


## Running the x2go server

Run the script.

```
$ cd docker-x2go
$ ./run.sh
```

It will generate an ssh key at start up and add it to
`/home/docker/.ssh/authorized_keys` in the container.

```
== Use this private key to log in ==
-----BEGIN RSA PRIVATE KEY-----
MIIEpAIBAAKCAQEAxb5G8gR40hAGEoRb4t1QDR4+tWeVw3Vgh6N4BaUpxFRFZS3Y
T72VqyNeFTqywuuA2tgF8ZhV1UC+Qxi0EmxoeRQAnt62EUerj1HcVm+MzveT+VWa
...
...
...
-----END RSA PRIVATE KEY-----
```

If the key was not printed, try this command:

```
$ docker logs x2go
```

Save the key to your local PC and use it from x2go client.

```
$ vi ~/x2go/x2go-key
$ chmod 400 ~/x2go/x2go-key
```


## Stopping the x2go server

```
$ docker kill x2go && docker rm x2go
```
