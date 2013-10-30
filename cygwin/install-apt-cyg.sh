#!/bin/sh

wget https://raw.github.com/rcmdnk/apt-cyg/master/apt-cyg --no-check-certificate -O /usr/local/bin/apt-cyg
apt-cyg update -m http://ftp.jaist.ac.jp/pub/cygwin/
