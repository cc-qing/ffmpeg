#!/bin/bash
rm -rf build || true
mkdir build
cd build
#../configure --disable-libaom --enable-libass --enable-libmp3lame --enable-libopus --enable-libvpx --enable-libwebp --enable-libx264 --enable-libx265 --enable-libzvbi --enable-libdrm  --enable-libmfx --enable-gpl --enable-shared   --enable-vaapi --prefix=/home/nx/ds/media_base/usr/local
#../configure --enable-libplacebo --disable-libaom --enable-libass --enable-libmp3lame --enable-libopus --enable-libvpx --enable-libwebp --enable-libx264 --enable-libx265 --enable-libzvbi --enable-libdrm  --enable-libmfx --enable-gpl --enable-shared  --disable-optimizations --enable-debug=3 --extra-cflags=-Og  --disable-stripping --enable-vaapi --prefix=/usr/local/ffmpeg/ffmpeg5
../configure  --disable-libaom --enable-libass --enable-libmp3lame --enable-libopus --enable-libvpx --enable-libwebp --enable-libx264 --enable-libx265 --enable-libzvbi --enable-libdrm  --enable-libmfx --enable-gpl --enable-shared  --disable-optimizations --enable-debug=3 --extra-cflags=-Og  --disable-stripping --enable-vaapi --prefix=/home/nx/ds/pub
make -j 8

sudo make install
sudo ldconfig

echo "DONE"

