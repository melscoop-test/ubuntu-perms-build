#!/bin/sh

set -e

SWIG_VERSION=$1

wget -q -N https://sourceforge.net/projects/swig/files/swig/swig-${SWIG_VERSION}/swig-${SWIG_VERSION}.tar.gz
ls -la
if [ ! -d "./swig-${SWIG_VERSION}" ] 
then
  tar xf swig-${SWIG_VERSION}.tar.gz
fi
cd swig-${SWIG_VERSION}
./configure
make -j 8
make install
cd ..
