# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2019-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="libheif"
PKG_VERSION="1.16.1"
PKG_SHA256="ac15b54b6d7c315710e156d119b8a1bfc89f29621e99222b2750b1f31c9c3558"
PKG_LICENSE="LGPLv3"
PKG_SITE="https://www.libde265.org"
PKG_URL="https://github.com/strukturag/libheif/releases/download/v${PKG_VERSION}/libheif-${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain libde265 libjpeg-turbo libpng"
PKG_LONGDESC="A HEIF file format decoder and encoder."
PKG_BUILD_FLAGS="+pic"

PKG_CMAKE_OPTS_TARGET="-DBUILD_SHARED_LIBS=OFF \
                       -DWITH_EXAMPLES=OFF"

pre_configure_target() {
  export CXXFLAGS="${CXXFLAGS} -Wno-unused-variable"
}
