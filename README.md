# docker-x2go

Remote desktop [X2Go Server](http://wiki.x2go.org/doku.php) in a dock

[![Docker Repository on Quay.io](https://quay.io/repository/tatsuya6502/x2go/status "Docker Repository on Quay.io")](https://quay.io/repository/tatsuya6502/x2go)

- X2Go Server
- Firefox
- Emacs
- rxvt Terminal Emulator
- Japanese fonts
- Ubuntu 14.04 LTS base image


## Running the X2Go Server Container

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

Save the key to your local PC.

```
# On your local PC
$ vi ~/x2go/x2go-key
$ chmod 600 ~/x2go/x2go-key
```

Start X2Go Client on you PC. Choose **Session** -> **New Session**,
and enter the following information to the **Session** tab.

- **Server**
  * Host: (The IP address of the server)
  * Login: `docker`
  * SSH port: `2222`
  * Use RSA/DSA key for ssh connection: `~/x2go/x2go-key`

- **Session Type**
  * Choose **Custom desktop** and enter `openbox-session` to
    the **Command** field.

Double-click on the session panel to connect.


## Stopping the x2go server

```
$ docker stop x2go
$ docker rm x2go
```
