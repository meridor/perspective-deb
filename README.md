# Perspective Debian Packages
This repository contains Debian packages configuration for Perspective API related products.

## Build binary package
```bash
$ export DEBFULLNAME="User Name"
$ export DEBEMAIL="user@example.com"
$ export DEBSIGN_KEYID=12345678
$ export DH_ALWAYS_EXCLUDE=CVS:.svn:.git
$ BUILD_PACKAGE=true debuild --no-tgz-check --no-lintian --preserve-envvar JAVA_HOME --preserve-envvar PATH -p"gpg --no-tty --passphrase <password>"
```

## Build source package for Launchpad
```bash
$ scripts/prepare-source-package.sh
```
