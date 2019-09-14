#!/bin/sh

# Fetch a versioned tarball, and update the git submodules as well:

VERSION=${VERSION:-2.1}

git clone https://gitlab.com/accounts-sso/libsignon-glib.git libsignon-glib-${VERSION}
cd libsignon-glib-${VERSION}
  git submodule init
  git submodule update
  rm -rf .git*
cd - 1>/dev/null
tar -Jcf libsignon-glib-${VERSION}.tar.xz libsignon-glib-${VERSION}
rm -rf libsignon-glib-${VERSION}

