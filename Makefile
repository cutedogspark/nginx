IMAGE = garychen/nginx
CONTAINER_NAME = nginx
VERSION = 1.1.0
WEB_PORT = 88

all: alpine alpine-qeek alpine-qeek-ffmpeg

alpine:
	echo "docker build -t ${IMAGE}:${VERSION}-alpine"
	docker build -t "${IMAGE}:${VERSION}-alpine" -f Dockerfile.alpine .

alpine-run:
	docker run -d --rm -p ${WEB_PORT}:80 --name ${CONTAINER_NAME} ${IMAGE}:${VERSION}-alpine

alpine-qeek:
	echo "docker build -t ${IMAGE}:${VERSION}-alpine-qeek"
	docker build -t "${IMAGE}:${VERSION}-alpine-qeek" -f Dockerfile.alpine_qeek .

alpine-qeek-run:
	docker run -d --rm -p ${WEB_PORT}:80 --name ${CONTAINER_NAME} ${IMAGE}:${VERSION}-alpine-qeek

alpine-qeek-ffmpeg:
	echo "docker build -t ${IMAGE}:${VERSION}-alpine-qeek-ffmpeg"
	docker build -t "${IMAGE}:${VERSION}-alpine-qeek-ffmpeg" -f Dockerfile.alpine_qeek_ffmpeg .

alpine-qeek-ffmpeg-run:
	docker run -d --rm -p ${WEB_PORT}:80 --name ${CONTAINER_NAME} ${IMAGE}:${VERSION}-alpine-qeek-ffmpeg

bash:
	docker exec -ti ${CONTAINER_NAME} bash

stop:
	docker stop ${CONTAINER_NAME}