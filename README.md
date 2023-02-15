# tor-privoxy [![GitHub Workflow Status (branch)](https://img.shields.io/github/actions/workflow/status/dockage/tor-privoxy/ci.yaml?branch=main)](https://github.com/dockage/tor-privoxy/actions/workflows/ci.yaml) [![Docker Pulls](https://badgen.net/docker/pulls/dockage/tor-privoxy?icon=docker&label=pulls)](https://hub.docker.com/r/dockage/tor-privoxy/) [![Docker Stars](https://badgen.net/docker/stars/dockage/tor-privoxy?icon=docker&label=stars)](https://hub.docker.com/r/dockage/tor-privoxy/)

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
docker build -t dockage/tor-privoxy https://github.com/dockage/tor-privoxy.git#main
```


# Quick Start

The quickest way to get started is using [docker-compose](https://docs.docker.com/compose/).

```bash
wget https://raw.githubusercontent.com/dockage/tor-privoxy/master/docker-compose.yml
docker-compose up
```

Alternately, you can manually launch the `tor-privoxy` container.

```bash
docker run --name='tor-privoxy' -d \
  -p 9050:9050 \
  -p 9051:9051 \
  -p 8118:8118 \
dockage/tor-privoxy:latest
```

The exposed ports are:
* <code>9050</code>: Tor proxy (SOCKS5)
* <code>9051</code>: Tor control port
* <code>8118</code>: Privoxy (HTTP Proxy)

You can extend <code>torrc</code> configuration by placing configuration file in <code>/etc/torrc.d</code>.
You must use <code>.conf</code> extension to be include in torrc configuration.

# Maintenance

## Upgrading

To upgrade to newer releases:

- **Step 1**: Download the updated Docker image:
```bash
docker pull dockage/tor-privoxy
```

- **Step 2**: Stop the currently running image:
```bash
docker stop tor-privoxy
```

- **Step 3**: Remove the stopped container
```bash
docker rm -v tor-privoxy
```

- **Step 4**: Start the updated image
```bash
docker run --name tor-privoxy -d \
[OPTIONS] \
dockage/tor-privoxy:latest
```

## Shell Access

For debugging and maintenance purposes you may want access the containers shell. If you are using Docker version `1.3.0` or higher you can access a running containers shell by starting `bash` using `docker exec`:

```bash
docker exec -it tor-privoxy sh
```

## Quick reference
* Where to get help: [website](https://dockage.dev/), [documentation](https://dockage.dev/docs/)
* GitHub repo: [dockage/tor-privoxy](https://github.com/dockage/tor-privoxy)
* Where to file issues: [GitHub issues](https://github.com/dockage/tor-privoxy/issues)
* Maintained by: The Dockage team (info at dockage.dev)
* License(s) - [license](https://github.com/dockage/tor-privoxy/blob/main/LICENSE), check 3rd party documentation for license information
