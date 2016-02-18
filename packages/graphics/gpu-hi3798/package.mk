################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2014 Stephan Raue (stephan@openelec.tv)
#
#  OpenELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  OpenELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="gpu-hi3798"
PKG_VERSION="SPC021"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="nonfree"
PKG_SITE="http://www.broadcom.com"
PKG_URL="https://github.com/Spitzbube/hisilicon-kernel/releases/download/linux-hisilicon-3.10-b4e1b4a/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_PRIORITY="optional"
PKG_SECTION="graphics"
PKG_SHORTDESC="gpu-hi3798: OpenGL-ES driver for Hi3798"
PKG_LONGDESC="gpu-hi3798: OpenGL-ES driver for Hi3798"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

make_target() {
  mkdir -p $SYSROOT_PREFIX/usr/include
    cp -PRv include/* $SYSROOT_PREFIX/usr/include

  mkdir -p $SYSROOT_PREFIX/usr/lib
    cp -PRv lib/libMali.so $SYSROOT_PREFIX/usr/lib
    cd $SYSROOT_PREFIX/usr/lib
	ln -sf libMali.so       libEGL.so.1.4
	ln -sf libEGL.so.1.4    libEGL.so.1
	ln -sf libEGL.so.1      libEGL.so
	ln -sf libMali.so       libGLESv1_CM.so.1.1
	ln -sf libGLESv1_CM.so.1.1  libGLESv1_CM.so.1
	ln -sf libGLESv1_CM.so.1    libGLESv1_CM.so
	ln -sf libMali.so           libGLESv2.so.2.0
	ln -sf libGLESv2.so.2.0     libGLESv2.so.2
	ln -sf libGLESv2.so.2       libGLESv2.so
	cd -   
}

makeinstall_target() {
  mkdir -p $INSTALL/usr/lib
    cp -PRv lib/libMali.so $INSTALL/usr/lib
    cd $INSTALL/usr/lib
	ln -sf libMali.so       libEGL.so.1.4
	ln -sf libEGL.so.1.4    libEGL.so.1
	ln -sf libEGL.so.1      libEGL.so
	ln -sf libMali.so       libGLESv1_CM.so.1.1
	ln -sf libGLESv1_CM.so.1.1  libGLESv1_CM.so.1
	ln -sf libGLESv1_CM.so.1    libGLESv1_CM.so
	ln -sf libMali.so           libGLESv2.so.2.0
	ln -sf libGLESv2.so.2.0     libGLESv2.so.2
	ln -sf libGLESv2.so.2       libGLESv2.so   
	cd -
}

