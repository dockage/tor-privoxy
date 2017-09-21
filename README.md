# tor-privoxy [![Docker Pulls](https://img.shields.io/docker/pulls/dockage/tor-privoxy.svg?style=flat)](https://hub.docker.com/r/dockage/tor-privoxy/) [![Docker Stars](https://img.shields.io/docker/stars/dockage/tor-privoxy.svg?style=flat)](https://hub.docker.com/r/dockage/tor-privoxy/) [![MicroBadger](https://images.microbadger.com/badges/image/dockage/tor-privoxy.svg)](https://microbadger.com/images/dockage/tor-privoxy) [![Docker Automated build](https://img.shields.io/docker/automated/dockage/tor-privoxy.svg?style=flat)](https://hub.docker.com/r/dockage/tor-privoxy/)

This image combines Tor and Privoxy services to prepare proxy connection for http and shell.


## Contributing

If you find this image useful here's how you can help:

- Send a pull request with your awesome features and bug fixes
- Help users resolve their [issues](../../issues?q=is%3Aopen+is%3Aissue).

## Issues

Before reporting your issue please try updating Docker to the latest version and check if it resolves the issue. Refer to the Docker [installation guide](https://docs.docker.com/installation) for instructions.

SELinux users should try disabling SELinux using the command `setenforce 0` to see if it resolves the issue.

If the above recommendations do not help then [report your issue](../../issues/new) along with the following information:

- Output of the `docker vers6` and `docker info` commands
- The `docker run` command or `docker-compose.yml` used to start the image. Mask out the sensitive bits.
- Please state if you are using [Boot2Docker](http://www.boot2docker.io), [VirtualBox](https://www.virtualbox.org), etc.

# Getting started

## Installation

Automated builds of the image are available on [Dockerhub](https://hub.docker.com/r/dockage/tor-privoxy) and is the recommended method of installation.

```bash
docker pull dockage/tor-privoxy
```

Alternatively you can build the image yourself.

```bash
docker build -t dockage/tor-privoxy github.com/dockage/tor-privoxy
```

# Maintenance

## Upgrading

To upgrade to newer releases:

    1. Download the updated Docker image:

  ```bash
  docker pull dockage/tor-privoxy
  ```

    2. Stop the currently running image:

  ```bash
  docker stop tor-privoxy
  ```

    3. Remove the stopped container

  ```bash
  docker rm -v tor-privoxy
  ```

    4. Start the updated image

  ```bash
  docker run --name tor-privoxy -itd \
    [OPTIONS] \
    dockage/tor-privoxy
  ```

## Shell Access

For debugging and maintenance purposes you may want access the containers shell. If you are using Docker version `1.3.0` or higher you can access a running containers shell by starting `bash` using `docker exec`:

```bash
docker exec -it tor-privoxy sh
```