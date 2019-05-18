This is:
https://raw.githubusercontent.com/yobasystems/alpine-grav/master/README.md

# Grav Docker image running on Alpine Linux

[![Docker Automated build](https://img.shields.io/docker/automated/yobasystems/alpine-grav.svg?style=for-the-badge&logo=docker)](https://hub.docker.com/r/yobasystems/alpine-grav/)
[![Docker Pulls](https://img.shields.io/docker/pulls/yobasystems/alpine-grav.svg?style=for-the-badge&logo=docker)](https://hub.docker.com/r/yobasystems/alpine-grav/)
[![Docker Stars](https://img.shields.io/docker/stars/yobasystems/alpine-grav.svg?style=for-the-badge&logo=docker)](https://hub.docker.com/r/yobasystems/alpine-grav/)

[![Alpine Version](https://img.shields.io/badge/Alpine%20version-v3.9.4-green.svg?style=for-the-badge)](https://alpinelinux.org/)
[![Grav Version](https://img.shields.io/badge/grav%20version-v1.6.9-green.svg?style=for-the-badge)](https://getgrav.org/)

This Docker image [(yobasystems/alpine-grav)](https://hub.docker.com/r/yobasystems/alpine-grav/) is based on the minimal [Alpine Linux](https://alpinelinux.org/) ready for running [Grav](https://getgrav.org/) (Flat file CMS)

##### Alpine Version 3.9.4 (Released May 09, 2019)

##### Grav Version 1.6.9

---

## Features

- Minimal size only 43 MB and only 7 layers
- Memory usage is minimal on a simple install

## Architectures

- `:amd64`, `:x86_64` - 64 bit Intel/AMD (x86_64/amd64)
- `:arm64v8`, `:aarch64` - 64 bit ARM (ARMv8/aarch64)
- `:arm32v7`, `:armhf` - 32 bit ARM (ARMv7/armhf)

##### PLEASE CHECK TAGS BELOW FOR SUPPORTED ARCHITECTURES, THE ABOVE IS A LIST OF EXPLANATION

## Tags

- `:latest` latest branch based (Automatic Architecture Selection)
- `:master` master branch usually inline with latest
- `:deliver-site` deliver-site branch based (Automatic Architecture Selection)
- `:one-page` one-page branch based (Automatic Architecture Selection)
- `:amd64`, `:x86_64` amd64 based on latest tag but amd64 architecture
- `:aarch64`, `:arm64v8` Armv8 based on latest tag but arm64 architecture
- `:armhf`, `:arm32v7` Armv7 based on latest tag but arm32 architecture

## Layers & Sizes

![Version](https://img.shields.io/badge/version-amd64-blue.svg?style=for-the-badge)
![MicroBadger Layers (tag)](https://img.shields.io/microbadger/layers/yobasystems/alpine-grav/amd64.svg?style=for-the-badge)
![MicroBadger Size (tag)](https://img.shields.io/microbadger/image-size/yobasystems/alpine-grav/amd64.svg?style=for-the-badge)

![Version](https://img.shields.io/badge/version-aarch64-blue.svg?style=for-the-badge)
![MicroBadger Layers (tag)](https://img.shields.io/microbadger/layers/yobasystems/alpine-grav/aarch64.svg?style=for-the-badge)
![MicroBadger Size (tag)](https://img.shields.io/microbadger/image-size/yobasystems/alpine-grav/aarch64.svg?style=for-the-badge)

![Version](https://img.shields.io/badge/version-armhf-blue.svg?style=for-the-badge)
![MicroBadger Layers (tag)](https://img.shields.io/microbadger/layers/yobasystems/alpine-grav/armhf.svg?style=for-the-badge)
![MicroBadger Size (tag)](https://img.shields.io/microbadger/image-size/yobasystems/alpine-grav/armhf.svg?style=for-the-badge)

## Creating an instance

    mkdir -p /data/{domain}/html

    docker run -e VIRTUAL_HOST={domain}.com,www.{domain}.com -v /data/{domain}/html:/usr/html -p 80:80 yobasystems/alpine-grav

    E.G

    mkdir -p /data/yobasystems/html

    docker run -e VIRTUAL_HOST=www.yobasystems.co.uk -v /data/yobasystems/html:/usr/html -p 80:80 yobasystems/alpine-grav

Make sure you create the folder on the host before starting the container and obtain the correct permissions.

```bash

mkdir -p /data/{domain}/html

docker run -e VIRTUAL_HOST={domain}.com,www.{domain}.com -v /data/{domain}/html:/usr/html -p 80:80 yobasystems/alpine-grav

E.G

mkdir -p /data/yobasystems/html

docker run -e VIRTUAL_HOST=www.yobasystems.co.uk -v /data/yobasystems/html:/usr/html -p 80:80 yobasystems/alpine-grav

```

The following user and group id are used, the files should be set to this:
User ID:
Group ID:

```bash
chown -R 100:101 /data/{domain}/html

E.G

chown -R 100:101 /data/yobasystems/html
```

The docker image will auto create the folder and populate with files if it doesn't exist. Make sure to mount /data/{domain}/html with your Backup files.

The following user and group id are used, the files should be set to this:
User ID:
Group ID:

```bash
chown -R 100:101 /data/{domain}/html
```

### Volume structure

- `/usr/html`: Webroot

### GRAV CLI GPM

Grav includes a GPM (Grav Package Manager) which allows you to install, update, uninstall and list all the themes and plugins available on the Grav repository, as well as upgrade Grav itself to the latest version. Its best to `su nginx` before executing anything or else you can potentially compromise your host.

```
docker exec -it <container_name> bash
su nginx
cd /usr/html
bin/gpm list

```

### Upload limit

The upload limit is 128 Megabytes.

### Change php.ini value

modify files/php-fpm.conf

To modify php.ini variable, simply edit php-fpm.ini and add php_flag[variable] = value.

```
php_flag[display_errors] = on
```

### PHP Modules

#### List of available modules in Alpine Linux, not all these are installed.

##### In order to install a php module do, (leave out the version number i.e. -5.6.11-r0

```
docker exec <image_id> apk add <pkg_name>
docker restart <image_name>
```

Example:

```
docker exec <image_id> apk add php7-soap
docker restart <image_name>
```

```
php7-common
php7-pdo_sqlite
php7-pear
php7-ftp
php7-imap
php7-mysqli
php7-json
php7-mbstring
php7-soap
php7-litespeed
php7-sockets
php7-bcmath
php7-opcache
php7-dom
php7-zlib
php7-gettext
php7-fpm
php7-intl
php7-openssl
php7-session
php7-mcrypt
php7-pdo_mysql
php7-embed
php7-xmlrpc
php7-wddx
php7-dba
php7-ldap
php7-xsl
php7-exif
php7-pdo_dblib
php7-bz2
php7-pdo
php7-pspell
php7-sysvmsg
php7-gmp
php7-apache2
php7-pdo_odbc
php7-shmop
php7-ctype
php7-phpdbg
php7-enchant
php7-sysvsem
php7-sqlite3
php7-odbc
php7-pcntl
php7-calendar
php7-xmlreader
php7-snmp
php7-zip
php7-posix
php7-iconv
php7-curl
php7-doc
php7-gd
php7-xml
php7-dev
php7-cgi
php7-sysvshm
php7-pgsql
php7-tidy
php7-pdo_pgsql
php7-phar
php7-mysqlnd
```

## Docker Compose example:

```yalm
grav:
  image: yobasystems/alpine-grav:latest
  environment:
    VIRTUAL_HOST: www.example.co.uk
  expose:
    - "80"
  volumes:
    - /data/example/www:/usr/html
  restart: always
```

## Source Repository

- [Bitbucket - yobasystems/alpine-grav](https://bitbucket.org/yobasystems/alpine-grav/)

- [Github - yobasystems/alpine-grav](https://github.com/yobasystems/alpine-grav)

## Links

- [Yoba Systems](https://www.yobasystems.co.uk/)

- [Dockerhub - yobasystems](https://hub.docker.com/u/yobasystems/)

- [Quay.io - yobasystems](https://quay.io/organization/yobasystems)
