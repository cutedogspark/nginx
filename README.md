# Nginx

Dockerized Nginx Server with the nginx-rtmp-module

Docker Hub : [garychen/nginx](https://hub.docker.com/r/garychen/nginx/)

Qeek version use Qeek-dev's nginx-rtmp-module support bitrate information [Qeek-dev's nginx-rtmp-module](https://github.com/qeek-dev/nginx-rtmp-module/tree/qeekdev)

## Build 

```
# build base on alpine
make alpine

# alpine-qeek version
make alpine-qeek

# build alpine-qeek support ffmpeg intel hardware acceleration
make alpine-qeek-ffmpeg

# Build All 
make
```

## Run Nginx Server

```
# run alpine image
make alpine-run 

# run alpine-qeek image
make alpine-qeek-run

# run alpine-qeek image
make alpine-qeek-ffmpeg-run
```

## Container Control 

Note: alpine no bash 

```
# exec into container
make bash

# stop container
make stop
```

## Image Size

Docker Hub : [garychen/nginx](https://hub.docker.com/r/garychen/nginx/)


## FFmpeg Dependency

- opencore-amr https://sourceforge.net/projects/opencore-amr/
- x264 http://www.videolan.org/developers/x264.html
- x265 http://x265.org/
- libogg https://www.xiph.org/ogg/
- libopus https://www.opus-codec.org/
- libvorbis https://xiph.org/vorbis/
- libtheora http://www.theora.org/
- libvpx https://www.webmproject.org/code/
- libmp3lame http://lame.sourceforge.net/
- xvid https://www.xvid.com/
- fdk-aac https://github.com/mstorsjo/fdk-aac
- freetype https://www.freetype.org/
- libvstab https://github.com/georgmartius/vid.stab
- libva https://github.com/01org/libva
- intel-vaapi-driver https://github.com/01org/intel-vaapi-driver
- intel-gpu-tools https://cgit.freedesktop.org/xorg/app/intel-gpu-tools

## Contributing

Contributions are most welcome! 

