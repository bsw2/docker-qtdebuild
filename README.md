# bsw2/qtdebuild

Build .deb packages for ubuntu 16.04 out of QT gui apps

# How to use this image

## debian directory

Debian needs to have files in a debian directory inside the source
directory.  This image uses curl to extract that from a gitlab server.

Unfortunately for now, that url path is hardcoded to my internal gitlab
server.

## Then run the container
```console
$ docker run --rm -it -v $(pwd):/src -e GITLAB_TOKEN=MYSECRETTOKEN -e PKGNAME=mypkg -e PKGVERSION=0.1 bsw2/qtdebuild
```
